package exds;

/**
* Represents a queue of any type, which uses the LILO principal (Last In, Last out).
**/
class Queue<T> {
    /**
    * The internal array which is used as a queue.
    **/
    private var internalArray:Array<T>;

    /**
    * Creates an empty Queue.
    **/
    public function new() {
        internalArray = new Array();
    }

    /**
    * Adds the specified element at the end of the queue.
    **/
    public function enqueue(element:T):Queue<T> {
        internalArray.push(element);
        return this;
    }

    /**
    * Removes the next element from the queue.
    **/
    public function dequeue():Queue<T> {
        internalArray.shift();
        return this;
    }

    /**
    * Returns the next element of the queue and removes it from the queue.
    *
    * @return the next element of the queue.
    **/
    public function poll():T {
        var v:T = internalArray[0];
        internalArray.shift();
        return v;
    }

    /**
    * Returns the next element of the queue.
    * Same function as first().
    *
    * @return the next element of the queue.
    **/
    public function peek():T {
        return internalArray[0];
    }

    /**
    * Returns the next element of the queue.
    * Same function as peek().
    *
    * @return the next element of the queue.
    **/
    public function first():T {
        return internalArray[0];
    }
}
