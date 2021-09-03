pragma solidity >=0.7.0 <0.9.0;

contract threads{
    struct order{ // the main struct to maintain orders and their delivery
        uint id;
        uint qty;
        uint typ;
        uint cost;
        string status;
    }
    mapping(uint => order) private orders;
    
    struct payment_status{
        uint order_id;
        string status;
        string proof;
    }
    
    mapping(uint => payment_status) private payment;
    
    struct Users{// to limit user access.
        uint id;
        string name;
        uint role;
    }
    mapping(string => Users) private user;
    mapping(address => string) private User;
    
    uint private userCount;
    uint private orderCount;
    uint private paymentCount;
    
    constructor(){
        init(msg.sender);//adds the first user who can/will add the others
    }

    function init(address _ad) private{
        userCount++;
        User[_ad]="Admin";
        user[User[_ad]]=Users(userCount, User[_ad], 1); 
    }
    
    function addUser(string memory _name, uint _role, address _ad) public returns(uint){// function to add a user
        require(user[User[msg.sender]].role==1,"the role doesnt allow it");
        userCount++;
        User[_ad]=_name;
        user[User[_ad]]=Users(userCount,_name,_role);
        return userCount;//returns the input record's id for reference
    }
    function mkOrder(uint _qty, uint _typ) public returns(uint){
        require(user[User[msg.sender]].role==2,"the role doesnt allow it");
        require(_typ>=1);
        orderCount++;
        uint _cost=0;
        _cost=((_typ*33)/100)*_qty;
        orders[orderCount]=order(orderCount,_qty,_typ,_cost,"awaiting_acknowledgement | payment_incomplete"); //after this a event can be triggered with the status being printed to show success.
        return orderCount;//returns the input record's id for reference
        
    }
    function acOrder(uint _orderid, uint _stat) public {
        require(user[User[msg.sender]].role==1,"the role doesnt allow it");
        require(_stat>0 && _stat<3);
        require(_orderid>0 && _orderid<=orderCount);
        order storage _order=orders[_orderid];
        if (_stat==1){//ie the accept condition
            _order.status="order_acknowledged | payment_incomplete";
        }
        else{// ir the decline condition
            _order.status="order_declined | payment_incomplete";
        }
    }
    function mkPayment(uint _orderid, string memory _proof) public returns(uint){
        require(user[User[msg.sender]].role==2,"the role doesnt allow it");
        require(_orderid>0 && _orderid<orderCount);
        paymentCount++;
        payment[paymentCount]=payment_status(_orderid,"Awaiting_Confirmation",_proof);
        return paymentCount;//returns the input record's id for reference
    }
    function acPayment(uint _payid, uint _stat) public {
        require(user[User[msg.sender]].role==1,"the role doesnt allow it");
        require(_stat>=0 && _stat<1);
        require(_payid>0 && _payid<=paymentCount);
        payment_status storage _payment=payment[_payid];
        order storage _order=orders[_payment.order_id];
        if (_stat==1){//ie the accept condition
            _payment.status="Confirmed";
            _order.status="order_acknowledged | payment_acknowledged";
        }
    }
    function view_orderStat(uint _orderid) public view returns(order memory) {
        require(_orderid>0 && _orderid<=orderCount,"order doesnt exist");
        return orders[_orderid];//returns a tuple hence can be difficult to read
        
    }
    function view_payStat(uint _payid) public view returns(payment_status memory){
        require(_payid>0 && _payid<=paymentCount,"payment doesnt exist");
        return payment[_payid];//returns a tuple hence can be difficult to read
    }
    
}