import java.util.*;
import java.lang.*;
import java.io.*;
 
class Basket<E>
{
	private E element;
	public void setElement(E x)
	{
		element = x;
	}
	public E getElement()
	{
		return element;
	}
}
 
class Fruit {}
class Apple extends Fruit 
{
	private int a;
	public void setAppleInt(int a)
	{
		this.a = a;
	}
	public int getAppleInt()
	{
		return a;
	}
}
class Orange extends Fruit {}
 
class GoldenDelicious extends Apple {}
class Jonagold extends Apple {}
 
class FruitHelper
{
	public static boolean isRipe(Apple apple)
	{
		if (apple.getAppleInt() > 0)
		{
			return true;
		}
		else return false;
 
	}
	public static boolean isRipeInBasket(Basket<Apple> basket)
	{
		Apple apple = basket.getElement(); // 1
		return isRipe(apple); // 2
	}
}
 
class Ideone
{
	public static void main (String[] args) throws java.lang.Exception
	{
		Basket<Apple> basket = new Basket<Apple>();
		Apple apple = new Apple();
		apple.setAppleInt(1);
		basket.setElement(apple);
		FruitHelper h = new FruitHelper();
		boolean x = h.isRipeInBasket(basket);
		System.out.println(x);
	}
}