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
	private static int theCount = 0;
	public static int count()
	{
		return theCount;
	}
	Basket()
	{
		++theCount;
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
 
	/*public static boolean isRipeInBasket(Basket<? extends Orange> basket)
	{
		Orange orange = basket.getElement();
		return isRipe(orange);
	}*/
 
	public static <A extends Apple> void insertRipe(A a, Basket<? super A> b) 
	{
		if (isRipe(a)) {
			b.setElement(a);
		}
	}
 
	public static <G extends Orange> void insertRipe(G g, Basket<? super G> b) 
	{
		if (isRipe(g)) {
			b.setElement(g);
		}
	}
 
 
	/*public static void insertRipe(Apple apple, Basket<Apple> basket)
	{
		if (isRipe(apple))
		{
			basket.setElement(apple);
		}
	}*/
}
 
class Ideone
{
	public static void main (String[] args) throws java.lang.Exception
	{
		Basket<Orange> bG = new Basket<Orange>(); // 1
		Basket b = bG; // 2
		Basket<Apple> bA = (Basket<Apple>)b; // 3
		bA.setElement(new Apple()); // 4
		Orange g = bG.getElement(); // 5
	}
}