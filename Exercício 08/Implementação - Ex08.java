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
	private boolean a;
	public void setAppleBool(boolean a)
	{
		this.a = a;
	}
	public boolean getAppleBool()
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
		if (apple.getAppleBool() == true) return true;
		else return false;
 
	}
	public static boolean isRipeInBasket(Basket<Apple> basket)
	{
		Apple apple = basket.getElement(); // 1
		return isRipe(apple); // 2
	}
	public static void insertRipe(Apple apple, Basket<Apple> basket)
	{
		if (isRipe(apple))
		{
			basket.setElement(apple);
		}
	}
}
 
class Ideone
{
	public static void main (String[] args) throws java.lang.Exception
	{
		Basket<Apple> basket = new Basket<Apple>();
		Apple apple = new Apple();
		apple.setAppleBool(false);
		basket.setElement(apple);
		FruitHelper h = new FruitHelper();
		boolean x = h.isRipeInBasket(basket);
		System.out.println(x);
		Apple apple2 = new Apple();
		apple2.setAppleBool(true);
		h.insertRipe(apple2, basket);
		// System.out.println(x);
	}
}