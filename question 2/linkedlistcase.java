package linkedlist;

import static org.junit.Assert.*;

import org.junit.Assert;
import org.junit.Test;

import linkedlist.reverselinkedlist.Node;

public class linkedlistcase {

	@Test
	public void listIsEmpty() {
		reverselinkedlist list = new reverselinkedlist();
		Assert.assertEquals(0,list.length());
	}
	
	@Test
	public void sizeone() {
		reverselinkedlist list = new reverselinkedlist();
		list.addTolist(new Node(1));
		Assert.assertEquals(1,list.length());
	}

}
