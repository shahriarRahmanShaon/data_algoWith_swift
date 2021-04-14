public class Lnode<T> {
    var value: T
    var nextNode: Lnode?
    var previous: Lnode?
    init(value: T){
        self.value = value
    }
}
public class LinkedList<T> {
    public typealias Node = Lnode<T>
    public var head: Node?
    public var last: Node? {
        guard var node = head else{return nil}
        while let next = node.nextNode {
            node = next
        }
        return node
    }
    
    public func append(value: T) {
        let newNode = Lnode(value: value)
        if let lastNode = last {
            // at least one node
            newNode.previous = lastNode
            lastNode.nextNode = newNode
        }else{
            // no node
            head = newNode
        }
    }
