class Student {   
    constructor(firstName, lastName , passorfail) { 
       this.firstName = firstName;
       this.lastName = lastName;
       this.passorfail = passorfail;     
    }  
     
    getName() {       
      console.log(`Name :  ${this.firstName} ${this.lastName}`);    
    } 
 }
 let obj = new Student('Student First Name', 'Student Last Name' , 'failed');
 obj.getName();