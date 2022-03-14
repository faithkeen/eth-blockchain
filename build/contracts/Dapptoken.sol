pragma solidity ^0.5.0;

contract DappToken{
    string public name = "DappToken";
    string public symbol = "Dapp";
    uint256 public totalSupply = 1000000000000000000000000000000000; // 1 million
    uint8 public decimals =18;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );

    mapping(address=> uint256) public balanceof;
    mapping(address=> mapping(address=>uint256))public allowance;

    constructor() public{
        balanceof[msg.sender]= totalSupply;
    }

    function Transfer(address _to, uint256 _value) public returns (bool success){
        require(balanceof[msg.sender] >= _value);
        balanceof[msg.sender]-=_value;
        balanceof[_to]+=_value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function approve(address_spender, uint256 _value)
}