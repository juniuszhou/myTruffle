pragma solidity ^0.4.0;


contract Storage {
    struct S{string a;uint b;}

    function storageToMemory(S storage x) internal{
        S memory tmp = x;//由Storage拷贝到memory中

        //memory的修改不影响storage
        tmp.a = "Test";
    }

    function memoryToMemory(S s) internal{
        S memory tmp = s;

        //引用传递
        tmp.a = "other memory";
    }

    function memoryToLocal(S s) internal{
        //默认的变量是storage的指针
        //Type struct MemoryToLocalVar.S memory is not implicitly convertible to expected type struct MemoryToLocalVar.S storage pointer.
        //S tmp = s;

        //修改变量为memory类型
        S memory tmp = s;
    }

    //默认是storage的
    S s;

    function memoryToState(S memory tmp) internal{
        s = tmp;//从内存中复制到状态变量中。

        //修改旧memory中的值，并不会影响状态变量
        tmp.a = "Test";
    }

    function convertStorage(S storage s) internal{
        S tmp = s;
    // 只是修改了它的指针
        tmp.a = "Test";
    }
}
