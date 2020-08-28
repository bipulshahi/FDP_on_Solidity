pragma solidity >0.4.22 <0.6.0;

contract aicte_coin{
    //Define maximum no. of coins available
    uint public max_aictecoin = 100000;
    
    //Define conversion
    uint public usd_to_aictecoin = 500;
    
    //Total coin bought by investor
    uint public total_coin_bought = 0;
    
    //map from investor address to its equity in coins
    mapping(address => uint)equity_coins;
    mapping(address => uint)equity_usd;
    
    //Check if an investor can buy coin or not
    modifier can_buy_coins(uint usd_invested){
        require(usd_invested * usd_to_aictecoin + total_coin_bought <= max_aictecoin);
        _;
    }
    
    //Getting the equity in coin of an investor
    function equity_in_coin(address investor) public view returns(uint){
        return equity_coins[investor];
    }
    
    //Getting the equity in USD
    function equity_in_usd(address investor) public view returns(uint){
        return equity_usd[investor];
    }
    
    //Buying function
    function buy_coin(address investor,uint usd_invested) public can_buy_coins(usd_invested){
        uint coins_bought = usd_invested * usd_to_aictecoin;
        equity_coins[investor] += coins_bought;
        equity_usd[investor] = equity_coins[investor]/500;
        total_coin_bought += coins_bought;
    }
    
    //Selling function
    function sell_coin(address investor, uint coins_sold) public{
        equity_coins[investor] -= coins_sold;
        equity_usd[investor] -= equity_coins[investor]/500;
        total_coin_bought -= coins_sold;
    }
    
    
    
    
    
    
}
