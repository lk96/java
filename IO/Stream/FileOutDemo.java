/**
 * 
 */
package stream;

import java.io.FileOutputStream;
import java.io.IOException;

/**
 * @author Administrator
 *
 */
public class FileOutDemo {

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		//������ļ������ڣ���ֱ�Ӵ�����������ڣ�ɾ���󴴽�
		//��ture������ڣ�����������
		FileOutputStream out=new FileOutputStream("demo/out.dat");
		out.write('A');//д����A�ĵͰ�λ
		out.write('B');//д����B�ĵͰ�λ
		int a=10;//writeֻ��д��λ����ôдһ��������Ҫд�Ĵ�ÿ�ΰ�λ
		out.write(a>>>24);
		out.write(a>>>16);
		out.write(a>>>8);
		out.write(a>>>0);
		byte[] gbk="�й�".getBytes("gbk");
		out.write(gbk);
		out.close();
		IOUtil.printHex("demo/out.dat");
		
	}
	

}