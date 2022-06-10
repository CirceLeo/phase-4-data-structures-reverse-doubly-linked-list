require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    if head.nil?
      return head
    end   
    
    
    curr = @head
    @head = @tail
    @tail = curr

    @head = reverse_node(curr)
    # while curr.next_node
    #   reverse_node(curr)
    #   curr = curr.prev_node
    # end
  end

  def reverse_node node

    if (node == nil)
      return nil
    end
    temp_next = node.next_node 

    node.next_node = node.prev_node
    node.prev_node = temp_next

    if (node.prev_node == nil)
      return node
    end

    return reverse_node(node.prev_node)
  end
end
