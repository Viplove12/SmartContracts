pragma solidity ^0.4.0;

contract Test{
    address owner;
    address add[];
   uint i;
   mapping(address=>uint) balances;
    
    function Test(){
        owner = msg.sender;
    }
    
    function addAddress(){
    add[i]=address;
    }
    function getBalance() constant returns(uint){
        return balances[msg.sender];
    }
    
    function test(){
    for(uint j=0;j<add.length;++j)
    if(address==add[i])
    kill();
    }
    
    
    function setBalance(uint bal){
        balances[msg.sender] = bal;
    }
    
    function addBalance(uint bal){
        balances[msg.sender] += bal;
    }
    
    function setBalance(address addr, uint bal) isOwner{
        balances[addr] = bal;
    }
    
    function addBalance(address addr, uint bal) isOwner{
        balances[addr] += bal;
    }
    
    function getBalance(address addr) isOwner constant returns(uint){
        return balances[addr];
    }
    
    function kill() isOwner{
        suicide(owner);
    }
    
    modifier isOwner(){
        require(msg.sender == owner);
        
        _;
    }
}
