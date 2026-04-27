package org.example.service;

import org.example.dao.ArticleDao;

import java.sql.Connection;

public class ArticleService {
  private ArticleDao articleDao;

  public ArticleService(Connection conn){
    this.articleDao = new ArticleDao(conn);
  }

  public int doWrite(String title, String body){
    return articleDao.doWrite(title,body);
  }
}
