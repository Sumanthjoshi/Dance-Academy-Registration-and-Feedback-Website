package servlet;

import java.io.IOException;
import java.util.ArrayList;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.PdfPCell;

import dao.StudentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Registration;

@WebServlet("/ExportPDFServlet")
public class ExportPDFServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition",
                "attachment; filename=RegisteredStudents.pdf");

        StudentDAO dao = new StudentDAO();
        ArrayList<Registration> students = dao.getAllStudents();

        Document document = new Document(com.itextpdf.text.PageSize.A4.rotate());
        try {

            PdfWriter.getInstance(document, response.getOutputStream());

            document.open();

            Font titleFont = FontFactory.getFont(FontFactory.HELVETICA_BOLD, 20);

            Paragraph title = new Paragraph("RADHASHANKARI DANCE ACADEMY", titleFont);

            title.setAlignment(Element.ALIGN_CENTER);

            document.add(title);

            document.add(new Paragraph(" "));           
            
            Font headingFont = FontFactory.getFont(FontFactory.HELVETICA_BOLD, 16);

            Paragraph heading = new Paragraph("Registered Students Report", headingFont);

            heading.setAlignment(Element.ALIGN_CENTER);

            document.add(heading);

            document.add(new Paragraph(" "));

            document.add(new Paragraph("Generated On : " + new java.util.Date()));

            document.add(new Paragraph(" "));

            Font totalFont = FontFactory.getFont(FontFactory.HELVETICA_BOLD, 13);

            Paragraph total = new Paragraph("Total Registered Students : " + students.size(), totalFont);
            total.setAlignment(Element.ALIGN_CENTER);
            document.add(total);
            document.add(new Paragraph(" "));
            
            PdfPTable table = new PdfPTable(6);
            table.setWidthPercentage(100);
            
            Font headerFont = FontFactory.getFont(FontFactory.HELVETICA_BOLD);

            com.itextpdf.text.pdf.PdfPCell cell;

            cell = new com.itextpdf.text.pdf.PdfPCell(new Paragraph("ID", headerFont));
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell);

            cell = new com.itextpdf.text.pdf.PdfPCell(new Paragraph("Student", headerFont));
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell);

            cell = new com.itextpdf.text.pdf.PdfPCell(new Paragraph("Parent", headerFont));
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell);

            cell = new com.itextpdf.text.pdf.PdfPCell(new Paragraph("Phone", headerFont));
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell);

            cell = new com.itextpdf.text.pdf.PdfPCell(new Paragraph("Course", headerFont));
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell);

            cell = new com.itextpdf.text.pdf.PdfPCell(new Paragraph("Batch", headerFont));
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell);
            for (Registration r : students) {

                table.addCell(String.valueOf(r.getId()));
                table.addCell(r.getStudentName());
                table.addCell(r.getParentName());
                table.addCell(r.getPhone());
                table.addCell(r.getCourse());
                table.addCell(r.getBatch());

            }

            document.add(table);

            document.close();

        } catch (DocumentException e) {

            e.printStackTrace();

        }

    }

}