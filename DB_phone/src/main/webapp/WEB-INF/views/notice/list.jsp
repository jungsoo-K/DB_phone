<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div module="Board_ListPackage_1002">
    <!--@css(/css/module/board/listPackage.css)-->
    <div module="board_title_1002">
        <div class="path">
            <span>현재 위치</span>
            <ol>
                <li><a href="/">홈</a></li>
                <li><a href="/board/index.html">게시판</a></li>
                <li title="현재 위치"><strong>{$board_name}</strong></li>
            </ol>
        </div>

        <div class="title">
            <h2>{$board_title} {$board_adult_icon}</h2>
            <p>{$board_info}</p>
        </div>
        <p class="imgArea">{$board_top_image}</p>
    </div>

    <div class="boardSort">
        <span module="board_category_1002">{$form.board_category}</span>
        <span module="board_ReplySort_1002">{$reply_sort}</span>
    </div>

    <div class="ec-base-table typeList gBorder">
        <table border="1" summary="">
            <caption>게시판 목록</caption>
            <colgroup module="board_listheader_1002">
                <col style="width:70px;" />
                <col style="width:135px;" class="{$config.is_category|display}" />
                <col style="width:auto;" />
                <col style="width:84px;" />
                <col style="width:77px;" class="{$config.use_date|display}" />
                <col style="width:55px;" class="{$config.use_cnt|display}" />
                <col style="width:55px;" class="{$config.is_use_recom|display}" />
                <col style="width:80px;" class="{$config.is_use_point|display}" />
            </colgroup>
            <thead module="board_listheader_1002">
                <tr style="{$list_bg_color} {$list_char_color}">
                    <th scope="col">{$checkbox} 번호</th>
                    <th scope="col" class="{$config.is_category|display}">카테고리</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col" class="{$config.use_date|display}">작성일</th>
                    <th scope="col" class="{$config.use_cnt|display}">조회</th>
                    <th scope="col" class="{$config.is_use_recom|display}">추천</th>
                    <th scope="col" class="{$config.is_use_point|display}">평점</th>
                </tr>
            </thead>
            <tbody module="board_notice_1002" class="center">
                <!--
                    $count = 2
                    $login_page_url = /member/login.html
                    $deny_access_url = /index.html
                -->
                <tr style="{$list_bg_color} {$list_char_color}">
                    <td>{$checkbox} {$notice_icon}</td>
                    <td class="{$category_display|display}">{$category_name}</td>
                    <td class="subject left txtBreak">
                        <strong>{$icon_re} <a href="{$link_board_detail}">{$subject}</a> {$icon_lock}{$icon_new}{$icon_hit}{$icon_file}<span class="txtEm">{$comment_count}</span></strong>
                    </td>
                    <td>{$member_icon}{$writer}</td>
                    <td class="{$date_display|display}"><span class="txtNum">{$write_date}</span></td>
                    <td class="{$hit_display|display}"><span class="txtNum">{$hit_count}</span></td>
                    <td class="{$vote_display|display}"><span class="txtNum">{$vote}</span></td>
                    <td class="{$point_display|display}"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point{$point_count}.gif" alt="{$point_count}점"></td>
                </tr>
                <tr style="{$list_bg_color} {$list_char_color}">
                    <td>{$checkbox} {$notice_icon}</td>
                    <td class="{$category_display|display}">{$category_name}</td>
                    <td class="subject left txtBreak">
                        <strong>{$icon_re} <a href="{$link_board_detail}">{$subject}</a> {$icon_lock}{$icon_new}{$icon_hit}{$icon_file}<span class="txtEm">{$comment_count}</span></strong>
                    </td>
                    <td>{$member_icon}{$writer}</td>
                    <td class="{$date_display|display}"><span class="txtNum">{$write_date}</span></td>
                    <td class="{$hit_display|display}"><span class="txtNum">{$hit_count}</span></td>
                    <td class="{$vote_display|display}"><span class="txtNum">{$vote}</span></td>
                    <td class="{$point_display|display}"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point{$point_count}.gif" alt="{$point_count}점"></td>
                </tr>
            </tbody>
            <tbody module="board_fixed_1002" class="center">
                <!--
                    $count = 2
                    $login_page_url = /member/login.html
                    $deny_access_url = /index.html
                -->
                <tr style="{$list_bg_color} {$list_char_color}">
                    <td>{$checkbox} {$fixed_icon}</td>
                    <td class="{$category_display|display}">{$category_name}</td>
                    <td class="subject left txtBreak">
                        <strong>{$icon_re}{$icon_lock} <a href="{$link_board_detail}">{$subject}</a> {$icon_new}{$icon_hit}{$icon_file}<span class="txtEm">{$comment_count}</span></strong>
                    </td>
                    <td>{$member_icon}{$writer}</td>
                    <td class="{$date_display|display}"><span class="txtNum">{$write_date}</span></td>
                    <td class="{$hit_display|display}"><span class="txtNum">{$hit_count}</span></td>
                    <td class="{$vote_display|display}"><span class="txtNum">{$vote}</span></td>
                    <td class="{$point_display|display}"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point{$point_count}.gif" alt="{$point_count}점"></td>
                </tr>
                <tr style="{$list_bg_color} {$list_char_color}">
                    <td>{$checkbox} {$fixed_icon}</td>
                    <td class="{$category_display|display}">{$category_name}</td>
                    <td class="subject left txtBreak">
                        <strong>{$icon_re}{$icon_lock} <a href="{$link_board_detail}">{$subject}</a> {$icon_new}{$icon_hit}{$icon_file}<span class="txtEm">{$comment_count}</span></strong>
                    </td>
                    <td>{$member_icon}{$writer}</td>
                    <td class="{$date_display|display}"><span class="txtNum">{$write_date}</span></td>
                    <td class="{$hit_display|display}"><span class="txtNum">{$hit_count}</span></td>
                    <td class="{$vote_display|display}"><span class="txtNum">{$vote}</span></td>
                    <td class="{$point_display|display}"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point{$point_count}.gif" alt="{$point_count}점"></td>
                </tr>
            </tbody>
            <tbody module="board_list_1002" class="center">
                <!--
                    $login_page_url = /member/login.html
                    $deny_access_url = /index.html
                -->
                <tr style="{$list_bg_color} {$list_char_color}">
                    <td>{$checkbox} {$no}</td>
                    <td class="{$category_display|display}">{$category_name}</td>
                    <td class="subject left txtBreak">
                        {$icon_re} <a href="{$link_board_detail}">{$subject}</a> {$icon_lock}{$icon_new}{$icon_hit}{$icon_file}<span class="txtEm">{$comment_count}</span>
                    </td>
                    <td>{$member_icon}{$writer}</td>
                    <td class="{$date_display|display}"><span class="txtNum">{$write_date}</span></td>
                    <td class="{$hit_display|display}"><span class="txtNum">{$hit_count}</span></td>
                    <td class="{$vote_display|display}"><span class="txtNum">{$vote}</span></td>
                    <td class="{$point_display|display}"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point{$point_count}.gif" alt="{$point_count}점"></td>
                </tr>
                <tr style="{$list_bg_color} {$list_char_color}">
                    <td>{$checkbox} {$no}</td>
                    <td class="{$category_display|display}">{$category_name}</td>
                    <td class="subject left txtBreak">
                        {$icon_re} <a href="{$link_board_detail}">{$subject}</a> {$icon_lock}{$icon_new}{$icon_hit}{$icon_file}<span class="txtEm">{$comment_count}</span>
                    </td>
                    <td>{$member_icon}{$writer}</td>
                    <td class="{$date_display|display}"><span class="txtNum">{$write_date}</span></td>
                    <td class="{$hit_display|display}"><span class="txtNum">{$hit_count}</span></td>
                    <td class="{$vote_display|display}"><span class="txtNum">{$vote}</span></td>
                    <td class="{$point_display|display}"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point{$point_count}.gif" alt="{$point_count}점"></td>
                </tr>
            </tbody>
        </table>
        <p class="message {$empty_display|display}" module="board_empty_1002">{$empty_message}</p>
    </div>
    <div module="board_ButtonList_1002" class="ec-base-button typeBG {$write_display|display}">
        <span class="gRight">
            <a href="/board/free/write.html{$param_write}" class="btn_style01 btn_black {$write_display|display}">글쓰기</a>
        </span>
    </div>
</div>

<div module="board_paging_1002" class="ec-base-paginate">
    <!--@css(/css/module/board/paging.css)-->
    <a href="{$param_prev}"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
    <ol>
        <li><a href="{$param_num}" class="{$param_class}">{$page_num}</a></li>
        <li><a href="{$param_num}" class="{$param_class}">{$page_num}</a></li>
    </ol>
    <a href="{$param_next}"><i class="fa fa-chevron-right" aria-hidden="true"></i></a>
</div>

<div module="board_search_1002">
    <!--@css(/css/module/board/search.css)-->
    <fieldset class="boardSearch">
        <legend>게시물 검색</legend>
        <p class="category {$form.product_category_selector_display|display}">{$form.product_category_selector}</p>
        <p>{$form.search_date} {$form.search_key} {$form.search} <a href="#none" onclick="{$action_search}" class="btn_style01 btn_black">SEARCH</a></p>
    </fieldset>
</div>

<!-- 관리자 전용 메뉴 -->
<div module="board_catemove_1002">
    <!--@css(/css/module/board/catemove.css)-->
    <p>
        해당 글을 {$form.board_category_move} 카테고리로
        <a href="#none" onclick="{$action_category_move}" class="btn_style01 btn_white">글이동</a>
    </p>
</div>

<div module="board_function_1002">
    <!--@css(/css/module/board/function.css)-->
    <p>
        해당 글 이동 {$form.boardGroup} 으로
        <a href="#none" onclick="{$action_article_move}" class="btn_style01 btn_white">글 이동</a>
        <a href="#none" onclick="{$action_article_copy}" class="btn_style01 btn_white">글 복사</a>
        * 댓글포함, 답변 불포함
    </p>
</div>
<!-- //관리자 전용 메뉴 -->

</body>
</html>