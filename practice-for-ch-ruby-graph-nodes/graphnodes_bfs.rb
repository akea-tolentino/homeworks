class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end
    
    def bfs(starting_node, target_node, visited = Set.new())
        return nil if (visited.include?(starting_node.value))
        return starting_node if target_node == starting_node
        return nil if starting_node.neighbors.empty?

        puts value
        visited.add(starting_node.value)
        
        starting_node.neighbors.each do |neighbor|
            bfs(neighbor, target_node, visited)
        end
        nil
    end
    
end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
    a.neighbors = [b, c, e]
    c.neighbors = [b, d]
    e.neighbors = [a]
    f.neighbors = [e]
    