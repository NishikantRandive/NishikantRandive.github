import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;


public class WordCount 
{
	void wordCount() throws IOException
	{
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		System.out.println("enter string");
		String s=br.readLine();
		int count=0;
		int max=0;
		int temp=0;
		for(int i=0;i<s.length();i++)
		{
			    char c=s.charAt(i);
				if(c==' ')
				{
					count++;
				}
				if(c=='!' || c=='?' || c=='.')
				{
					count++;
					temp=count;
					count=0;
				}
				if(temp>max)
				{
					max=temp;
				}
			
		}
		System.out.println("no of words="+max);
	}
	
	public static void main(String[] args) throws IOException 
	{
		WordCount wc=new WordCount();
		wc.wordCount();
	}
}
