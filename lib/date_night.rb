class DateNight
  attr_accessor :head, :current,
  def initialize
    @current = nil
    @head = nil
  end
  def insert(score, title)
    node = Node.new(score, title)
    if @head == nil
      @head = node
      @current = @head
    end
      if node.score < @current.score
        if @current.left != nil
          @current = @current.left
          insert(score, title)
        else
          @current.left = node
          @current = @head
        end
      end
      if node.score > @current.score
        if @current.right != nil
          @current = @current.right
          insert(score, title)
        else
          @current.right = node
          @current = @head
        end
      end
  end
  def min_find
    if @current.left != nil
      @current = @current.left
      min_find
    else
      { current.title => current.score }
    end
  end
  def max_find
    if @current.right != nil
      @current = @current.right
      min_find
    else
      { current.title => current.score }
    end
    # def include_in_tree(number)
    #   binding.pry
    # if @current.score < number
    #   @current = @current.right
    #   include_in_tree(number)
    # elsif @current.score > number
    #   @current = @current.left
    #   include_in_tree(number)
    # elsif @current.score == number
    #   "true"
    # else @current.score != number
    #   "false"
    # end
  end

  end
  # def depth_find
  #   if @current.right != nil || current.left != nil
  #     (@current.depth +1) = @current.depth
  #     @current = @current.right ; @current = current.left
  #     insert(score, title)
  #   else
  #   end
  #
  #   end
  #   @current.depth = (@current.depth + 1)

end
