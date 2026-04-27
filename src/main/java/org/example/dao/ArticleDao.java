package org.example.dao;

import org.example.util.DBUtil;
import org.example.util.SecSql;

import java.sql.Connection;

public class ArticleDao {
  Connection conn;

  public ArticleDao(Connection conn) {
    this.conn = conn;
  }

  public int doWrite(String title, String body) {
    SecSql sql = new SecSql();

    sql.append("INSERT INTO article");
    sql.append("SET regDate = NOW(),");
    sql.append("updateDate = NOW(),");
    sql.append("title = ?,", title);
    sql.append("`body` = ?;", body);

    return DBUtil.insert(conn, sql);
  }
}
