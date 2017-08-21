package linkedlist;



public class reverselinkedlist {
	


	static  Node head;
	 
	   static  class Node {
	 
	        int data;
	        Node next;
	 
	        Node(int d) {
	            data = d;
	            next = null;
	        }
	    }
	   
	   public int length() { 
	   int length = 0; Node current = head; 
	   while(current != null)
	   {
	     length ++; current = current.next; } 
	   return length; 
	   }

	   
	   public void addTolist(Node node) {
		   
		   if (head == null) {
		    head = node;
		   } else {
		    Node temp = head;
		    while (temp.next != null)
		     temp = temp.next;
		  
		    temp.next = node;
		   }
		  }
	   
	   public Node reverseList(Node node) {
	        Node prev = null;
	        Node current = node;
	        Node next = null;
	        while (current != null) {
	            next = current.next;
	            current.next = prev;
	            prev = current;
	            current = next;
	        }
	        node = prev;
	        return node;
	    }
	 
	   
	    void printList(Node node) {
	        while (node != null) {
	            System.out.print(node.data + " ");
	            node = node.next;
	        }
	    }
	 
	    public static void main(String[] args) {
	    	reverselinkedlist list = new reverselinkedlist();
	    	Node head=new Node(1);
	    	  list.addTolist(head);
	    	  list.addTolist(new Node(2));
	    	  list.addTolist(new Node(3));
	    	  list.addTolist(new Node(4));
	    	  list.addTolist(new Node(5));
	         
	        System.out.println("Given  list");
	        list.printList(head);
	        head = list.reverseList(head);
	        System.out.println("");
	        System.out.println("Reversed  list ");
	        
	        list.printList(head);
	    }


		
	

	

}
