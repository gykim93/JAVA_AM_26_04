package org.example.controller;

import org.example.service.ArticleService;

import java.sql.Connection;
import java.util.Scanner;

public class ArticleController {
  private Connection conn;
  private Scanner sc;

  private ArticleService articleService;

  public ArticleController(Scanner sc, Connection conn) {
    this.sc = sc;
    this.conn = conn;
    this.articleService = new ArticleService(conn);
  }
  // 함수 구현

  // 글 쓰기
  public void doWrite() {
    System.out.println("== 글쓰기 ==");
    System.out.print("제목 : ");
    String title = sc.nextLine();
    System.out.print("내용 : ");
    String body = sc.nextLine();

    int id = articleService.doWrite(title, body);

    System.out.println(id + "번 글이 생성됨");
  }

  // 글 리스트
  public void showList() {

  }

  // 글 수정
  public void doModify() {

  }

  // 글 삭제
  public void doDelete() {

  }
}
