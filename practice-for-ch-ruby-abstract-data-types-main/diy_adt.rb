class Stack
    def initialize
        @store = []
    end

    def push(el)
        store << value
    end

    def pop
        store.pop
    end

    def peek
        store.last
    end

end


class MyQueue

    def initialize
        @inner_array = []
    end

    def enqueue(el)
    inner_array.unshift(el)
    end

    def dequeue
    inner_array.pop
    end

    def show
    inner_array.dup
    end

    def empty?
    inner_array.empty?
    end

    def size
    inner_array.length
    end

end


class Map

    def initialize
        @store = {}
    end

    def set(key, value)
        store[key] = value
    end

    def get(key)
        store[key]
    end

    def delete(key)
        store.delete(key)
    end

    def show
        store
    end

end