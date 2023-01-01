package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Blog;
import qht.shopmypham.com.vn.model.BlogOffer;

import java.util.List;
import java.util.stream.Collectors;

public class BlogService {
    public static List<Blog> get4Blog() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM blog LIMIT 8")
                        .mapToBean(Blog.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }

    public static List<Blog> getAllBlog() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM blog")
                        .mapToBean(Blog.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }

    public static Blog getBlogByIdBl(String idBl) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM blog where idBl=?")
                        .bind(0, idBl)
                        .mapToBean(Blog.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );
    }

    public static List<BlogOffer> get6BlogOffer() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM blogoffer LIMIT 6")
                        .mapToBean(BlogOffer.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }

    public static void editBlogByIdBl(String idBl, String img, String linkBlog, String idA, String topic, String shortContent) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update blog set idA=?,  img=?,  topic=?, shortContent=?, linkBlog=? where idBl = ?")
                        .bind(0, idA)
                        .bind(1, img)
                        .bind(2, topic)
                        .bind(3, shortContent)
                        .bind(4, linkBlog)
                        .bind(5, idBl)
                        .execute()
        );
    }

    public static void addBlogByIdBl(String img, String linkBlog, String time, String idA, String topic, String shortContent) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into blog(idA,img,topic,time,view,shortContent,linkBlog) values (?,?,?,?,?,?,?)")
                        .bind(0, idA)
                        .bind(1, img)
                        .bind(2, topic)
                        .bind(3, time)
                        .bind(4, "0")
                        .bind(5, shortContent)
                        .bind(6, linkBlog)
                        .execute()
        );
    }

    public static void deleteBlogByIdBl(String idBl) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from blog where idBl = ?")
                        .bind(0, idBl)
                        .execute()
        );
    }

    public static BlogOffer getBlogOfferByIdBl(String idBv) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM blogoffer where idBv=?")
                        .bind(0, idBv)
                        .mapToBean(BlogOffer.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );
    }

    public static void editBlogOfferByIdBl(String idBv, String img, String link, String idA, String topic) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update blogoffer set idA=?,  img=?,  topic=?, link=? where idBv = ?")
                        .bind(0, idA)
                        .bind(1, img)
                        .bind(2, topic)
                        .bind(3, link)
                        .bind(4, idBv)
                        .execute()
        );
    }

    public static void addBlogOfferByIdBl(String img, String link, String idA, String topic) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into blogoffer(idA,img,topic,link) values (?,?,?,?)")
                        .bind(0, idA)
                        .bind(1, img)
                        .bind(2, topic)
                        .bind(3, link)
                        .execute()
        );
    }

    public static void deleteBlogOfferByIdBl(String idBv) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from blogoffer where idBv = ?")
                        .bind(0, idBv)
                        .execute()
        );
    }

}
