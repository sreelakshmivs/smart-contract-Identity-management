pragma solidity ^0.4.0;

contract lesson1
{
    string public username;
    string public loc;
    address password;
    address _pass;
    uint public age;
    uint public phone;
    uint public acnum;
    uint public adhar;
    address owner;
    
    function lesson1()
    {
        owner = msg.sender;   
    }
    modifier onlyOwner
    {
      require(msg.sender == owner);
        _;
    }
    
    event Instructor
    (
        string username,
        address password,
        string loc,
        uint age,
        uint phone,
        uint acnum,
        uint adhar          
    );
    
    function Registration(string _username, address _password, string _loc, uint _age, uint _phone, uint _acnum, uint _adhar) onlyOwner public
    {
        username = _username;
        password = _password;
        loc = _loc;
        age = _age;
        phone = _phone;
        acnum = _acnum;
        adhar = _adhar;
        Instructor(_username, _password, _loc, _age, _phone, _acnum, _adhar);
    }
    
    function getInstructor() public constant returns(string, address, string, uint, uint, uint, uint)
    {
        return(username, password, loc, age, phone, acnum, adhar);
    }
    
    modifier onlyLogin
    {
      require(password == _pass);
        _;
    }
    
    function login(string _username, address _pass) onlyLogin public
    {
        username = _username;
        password = _pass;   
    }
    
    function getLogin() public constant returns(string, address)
    {
        return(username,password);
    }
}











