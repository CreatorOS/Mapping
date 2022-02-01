# Mapping

Maps are created with the syntax `mapping(keyType => valueType)`.

`keyType` can be value types such as `uint`, `address` or `bytes`.

`valueType` can be any type including another mapping or an array.

Mappings are not iterable.

Write a mapping to the store address to uint mapping.

```
mapping(address => uint) public myMap;
```

We will write functions to create mappings, to access their values and remove them.

## Accessing Mapping Values using Keys

Let's write a function that returns the value of a mapping given a key.

```
    function get(address _addr) public view returns (uint) {
        return myMap[_addr];
    }
```

- If the value was never set, it will return the default value.

First, go ahead and call `get`. It should be `0` which is the default value of a mapping.

## Setting Mapping Values

Let's write a function that sets the value of myMap mapping given an address as key and a uint value.

```
    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }
```

Call `set` with some address and `uint _i = 1`. Call `get` with the same `_addr`, you should see the mapping value changed to `1`.

## Removing Mapping Values

Let's write a function that remove the value of myMap mapping given an address as key.

- Reset the value to the default value.

```
    function remove(address _addr) public {
        delete myMap[_addr];
    }
```

Call `remove` then `get`. Check the output, you should see the mapping value changed to `0` after call to `remove(addr)`.
