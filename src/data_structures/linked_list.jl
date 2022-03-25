"""
   Linked List

# Brief:
    A linked list is a data structure where each element is connected to the next one.

# Complexity of some operations
    - insert            - O(N)
    - insert to front   - O(1)
    - delete            - O(N)
    - delete first      - O(1)
    - get element       - O(N)

# Functions
    - create_node(val, next=missing) - Create node with value 'val' and the pointer to the next node ( missing by default ) 
    - create_list(n::Int=0, val=missing) - Create root node of the list with n elements with value set to 'val'
    - insert(list::Node, new_node::Node, index::Int=1) - Add a new node to the list at the specified index
    - insert(list::Node, val, index::Int=1) - Create a new node with value 'val' in the list at the specified index
    - push_back(list::Node, node::Node) - Add a new node to the end of the list
    - push_back(list::Node, val) - Add a new node with value 'val' to the end of the list
    - return_as_array(list::Node) - Return the array representation of the list
    - clear(list::Node) - Remove all elements from the list
    - remove(list::Node, index::Int) - Remove an element at the specified index
    - remove_all(list::Node, val) Remove all elements with the value 'val'
    - remove_first(list::Node, val) - Remove the first element in the list with value 'val'
    - get_node(list::Node, index::Int) - Get a node at the specified index
    - get(list::Node, index::Int) - Get a value from the node at the specified index
    - indexOf(list::Node, val) - Return the index of the first element with a value 'val'
    - is_empty(list) - Return true if list is empty, false if it has elements

# Contributed by: [Nikola Mircic](https://github.com/Nikola-Mircic)
"""
module LinkedList

mutable struct Node
    val::Any # Value of the node
    next::Any # Pointer to the next node
    Node(val, next = missing) = new(val, next)
end

# Create node with value 'val' and the pointer to the next node ( missing by default ) 
function create_node(val, next = missing)
    return Node(val, next)
end

# Create root node of the list
function create_list(n::Int = 0, val = missing)
    root_node = create_node("root") # Root node with value "root"

    current_node = root_node
    for i in 1:n
        new_node = create_node(val, missing)
        current_node.next = new_node

        current_node = current_node.next
    end

    return root_node
end

# Add a new node to the list at the specified index
function insert(list::Node, new_node::Node, index::Int = 1)
    current_node = get_node(list, index - 1)

    next = current_node.next
    current_node.next = new_node
    return new_node.next = next
end

# Create a new node with value 'val' in the list at the specified index
function insert(list::Node, val, index::Int = 1)
    new_node = create_node(val)
    return insert(list, new_node, index)
end

# Add a new node to the end of the list
function push_back(list::Node, node::Node)
    current_node = list
    while !ismissing(current_node.next)
        current_node = current_node.next
    end

    return current_node.next = node
end

# Add a new node with value 'val' to the end of the list
function push_back(list::Node, val)
    new_node = create_node(val)
    return push_back(list, new_node)
end

function return_as_array(list::Node)
    arr = Array{Any}(missing, 0)
    node = list.next

    while !ismissing(node)
        push!(arr, node.val)
        node = node.next
    end

    return arr
end

# Remove all elements from the list
function clear(list::Node)
    return list.next = missing
end

# Remove an element at the specified index
function remove(list::Node, index::Int)
    node_before = get_node(list, index - 1)
    to_remove = node_before.next
    return node_before.next = to_remove.next
end

# Remove all elements with the value 'val'
function remove_all(list::Node, val)
    current_node = list
    while !ismissing(current_node.next)
        next_node = current_node.next
        if next_node.val == val
            current_node.next = next_node.next
        else
            current_node = next_node
        end
    end
end

# Remove the first element in the list with value 'val'
function remove_first(list::Node, val)
    index = indexOf(list, val)
    return remove(list, index)
end

# Get a node at the specified index
function get_node(list::Node, index::Int)
    current_node = list
    for i in 1:index
        if !ismissing(current_node)
            current_node = current_node.next
        else
            return missing
        end
    end
    return current_node
end

# Get a value from the node at the specified index
function get(list::Node, index::Int)
    node = get_node(list, index)
    if !ismissing(node)
        return node.val
    end
    return missing
end

# Return the index of the first element with a value 'val'
function indexOf(list::Node, val)
    current_node = list.next
    i = 1
    while !ismissing(current_node)
        if current_node.val == val
            return i
        else
            current_node = current_node.next
            i += 1
        end
    end
    return -1
end

# Return true if list is empty, false if it has elements
function is_empty(list)
    return ismissing(list.next)
end

end
