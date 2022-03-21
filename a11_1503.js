//REST OPERATOR
function mymarks(fname,lname,...marks){
    return marks;
}
console.log(mymarks('Ssss','NNN',23,45,56));

//SPREAD OPERATOR
function add(a,b,c){
    return a+b+c;
}
let v=[1,2,3];
console.log(add(...v));

//Array restructuring
let name=['SSSS','DDDDD'];
let [fname,lname]=name;
console.log(fname,lname);


//object restructuring
let person={
    gender:'male',
    city:'bangalore'
}
let {gender:g,city:c}=person;
console.log(g,c);