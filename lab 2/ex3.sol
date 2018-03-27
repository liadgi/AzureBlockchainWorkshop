contract Token {
    mapping(address => uint) public balances;

    function Token() {
        balances[msg.sender] = 1000000;
    }

    function transfer(address _to, uint _amount) {
        require(balances[msg.sender] >= _amount);
        balances[msg.sender] -
            = _amount;
        balances[_to] += _amount;
    }
}