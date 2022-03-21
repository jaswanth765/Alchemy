let sumofTwoNumbers = (a,b) => a+b;//arrow function
console.group(sumofTwoNumbers(100,200));

let multiplelines =`first line,
                Second line`
console.log(multiplelines);

//ES6 features

let defaultvalues=function(variable1=10,variable2=5){
    console.log(variable1);
    console.log(variable2);
}

let firstname='ppppp';
let lastname='sssss';
let name1=`My name is ${firstname} ${lastname}`;
console.log(name1);

//Array destructuring
let resources=["developer","testing"];
let [a,b]=resources;
console.log(a,b);


//object destructuring
let person={
    firstName:"Developer1",
    lastName:"Testing2"
}
let {firstName:fname ,lastName:lname}=person;
console.log(fname,lname);

function getPerson(){
    return null;
}

let {firstName1,lastName1} =getPerson() || {};
console.log(firstName1);
console.log(lastName1);