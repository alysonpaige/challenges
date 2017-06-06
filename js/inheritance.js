"use strict";

class Animal {
    eat() {
        console.log("om nom nom");
    }
}

class Dog extends Animal {
    // by using extends
    // Dog class wil inherit all methods from Animal class
}

const d = new Dog();
d.eat();