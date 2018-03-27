contract SimpleStore {
    uint value;
    function set(uint _value) {
        value = _value;
    }
    function get() constant returns (uint) {
            return value;
    }
}