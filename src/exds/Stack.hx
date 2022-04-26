package exds;

/**
* Represents a stack of any type, which uses the LIFO principal (Last In, First out).
**/
class Stack<T> {
    /**
    * The internal array which is used as a stack.
    **/
    private var internalArray:Array<T>;

    /**
    * Creates an empty Stack.
    **/
    public function new() {
        internalArray = new Array();
    }

    /**
    * Adds the specified element on top of the stack.
    **/
    public function push(element:T):Stack<T> {
        internalArray.push(element);
        return this;
    }

    /**
    * Removes the top element from the stack.
    **/
    public function pop():Stack<T> {
        internalArray.pop();
        return this;
    }

    /**
    * Returns the top element of the stack.
    *
    * @return the top element of the stack.
    **/
    public function top():T {
        return internalArray[internalArray.length - 1];
    }
}
