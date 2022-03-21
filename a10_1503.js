class subject{
    constructor(maths,science,computer){
        this.maths=maths;
        this.science=science;
        this.computer=computer;
    }
    sumSubjectMarks = () => this.maths+this.science+this.computer;
}
class Student extends subject{
    constructor(fname,lname,dob,std,...sub){
        super(...sub);
        this.fname=fname;
        this.lname=lname;
        this.dob=dob;
        this.std=std;
    }
}
let s1=new Student('ssss','dddd',12-03-2000,2,23,30,29);
let s2=new Student('ssss','dddd',09-05-2000,2,16,30,10);
let s3=new Student('ssss','dddd',21-08-1997,5,19,30,18);
let s4=new Student('ssss','dddd',30-09-1999,3,30,30,30);
let s5=new Student('xdcd','sdcd',13-12-2001,1,22,23,29);
console.log(s1.sumSubjectMarks());
console.log(s2.sumSubjectMarks());
console.log(s3.sumSubjectMarks());