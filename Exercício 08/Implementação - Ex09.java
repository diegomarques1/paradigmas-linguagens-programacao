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
class Orange extends Fruit 
{
	private boolean o;
	public void setOrangeBool(boolean o)
	{
		this.o = o;
	}
	public boolean getOrangeBool()
	{
		return o;
	}
}
 
class GoldenDelicious extends Apple {}
class Jonagold extends Apple {}
 
class FruitHelper
{
	public static boolean isRipe(Apple apple)
	{
		if (apple.getAppleBool() == true) return true;
		else return false;
 
	}
	
	public static boolean isRipe(Orange orange)
	{
		if (orange.getOrangeBool() == true) return true;
		else return false;
	}
	
	public static boolean isRipeInBasket(Basket<? extends Apple> basket)
	{
		Apple apple = basket.getElement();
		return isRipe(apple);
	}	

	public static boolean isRipeInBasket(Basket<? extends Orange> basket)
	{
		Orange orange = basket.getElement();
		return isRipe(orange);
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
		Basket<Orange> basket2 = new Basket<Orange>();
		Orange orange = new Orange();
		orange.setOrangeBool(true);
		basket2.setElement(orange);
		
	}
}