// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList{
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;
    function create(string calldata mytodo) external {//insert a new todo
        todos.push(Todo({
            text: mytodo,
            completed: false
        }));
    }

    function updatetext(uint _index, string calldata mytodo) external{ //update text on  a todo 
        todos[_index].text = mytodo;

     //we can also use this - which saves gas if you have alot of fields to update
       // todo storage todo = todos[_index];
      //  todo.text = _text;
   

    }
    function get(uint _index) external view returns (string memory, bool){// get status and data stored in a todo 
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}
