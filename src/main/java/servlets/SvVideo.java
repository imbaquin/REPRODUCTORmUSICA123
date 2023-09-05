
package servlets;

import com.umariana.mundo.Video;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SvVideo", urlPatterns = {"/SvVideo"})
public class SvVideo extends HttpServlet {

    ArrayList<Video> misVideos = new ArrayList<>();
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // aqui vienen los daots por GET
     
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        //POST
       String idVideo = request.getParameter( "idvideo");
       String titulo = request.getParameter( "titulo");
       String autor = request.getParameter( "autor");
       String anio = request.getParameter( "anio");
       String categoria = request.getParameter( "categoria");
       String url = request.getParameter( "url");
       String letra = request.getParameter( "letra");
       
       
              
       /*System.out.println("idVideo:" + idVideo);
       System.out.println("titulo:" + titulo);
       System.out.println("autor:" + autor);
       System.out.println("anio:" + anio);
       System.out.println("categoria:" + categoria);
       System.out.println("url:" + url);
       System.out.println("letra:" + letra); */
       
       //serializacion y deserializacion
       
       Video miVideo = new Video (Integer.parseInt(idVideo), titulo,autor,anio,categoria,url,letra);
        
        

 //Serializacion
        FileOutputStream archivo = new FileOutputStream(getServletContext().getRealPath("listaVideos.data"), true);
        System.out.println(archivo);
        ObjectOutputStream write = new ObjectOutputStream (archivo);
        write.writeObject(miVideo);
        archivo.close();
        write.close();
       
        //Deserializar
        FileInputStream subir = new FileInputStream(getServletContext().getRealPath("listaVideos.data"));
        //leer
        ObjectInputStream subido = new ObjectInputStream(subir);
       
        try {
            Video video = (Video) subido.readObject();
            misVideos.add(miVideo);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SvVideo.class.getName()).log(Level.SEVERE, null, ex);
        }
        subido.close();
       
        //agregar el arraylist al objeto de solicitud como atributo
       request.setAttribute("misVideos",misVideos);
       
       //redireccionara a la pagina web destino 
       
       request.getRequestDispatcher("listarVideos.jsp").forward(request,response);
       /*for (Video v:misVideos)
       {
       System.out.println("idVideo:" + v.getIdVideo());
       System.out.println("titulo:" + v.getTitulo());
       System.out.println("autor:" + v.getAutor);
       System.out.println("anio:" + v.getAnio);
       System.out.println("categoria:" + v.getCategoria);
       System.out.println("url:" + v.getUrl);
       System.out.println("letra:" + v.getLetra);
       System.out.println("-------------------");}*/
           
       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
