<!-- contract MyToken{
    string public tokenName = "META";
    string public tokenAbbr = "MTA";
    unit public totalSupply = 0;

    mapping(address => unit) public balances;



    function mint(adress _address, unit _value) public {
        totalSupply += _value;
        balnces[_adress] += _value;
    }

    function burn(address _address, unit _value) public{
        if(balances[_address] >= _value){
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
} -->


pragma solidity ^0.8.0;

contract MyToken {
    string public tokenName = "META";
    string public tokenAbbr = "MTA";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value) {
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}
