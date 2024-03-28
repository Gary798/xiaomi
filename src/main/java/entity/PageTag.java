package entity;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class PageTag extends SimpleTagSupport{
    private String controller;//web组件名
    private int curpage;//当前页
    private int pagesize;//页大小
    private int total;//总记录
    private String where;//其他请求参数

    public String getController() {
        return controller;
    }

    public void setController(String controller) {
        this.controller = controller;
    }

    public int getCurpage() {
        return curpage;
    }

    public void setCurpage(int curpage) {
        this.curpage = curpage;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getTotal() {
        return pagesize;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getWhere() {
        return where;
    }

    public void setWhere(String where) {
        this.where = where;
    }

    public PageTag(String controller, int curpage, int pagesize, int total, String where) {
        super();
        this.controller = controller;
        this.curpage = curpage;
        this.pagesize = pagesize;
        this.total = total;
        this.where = where;
    }

    private Integer  pages() {
        return (this.total-1) / this.pagesize+1;
    }

    public PageTag() {
        super();
    }

    @Override
    public void doTag() throws JspException, IOException {
        super.doTag();
        List<String> options = new ArrayList<String>();
        String url = "<a href='%s?curpage=%d&pagesize=%d&%s'>%s</a>";
        //第一页
        String first = String.format(url, this.controller,1,this.pagesize,this.where,"第一页");
        //上一页
        String pre = null;
        if(this.curpage == 1) {
            pre = "<a href=javascript:alert('已经是第一页');>上一页</a>";
        }else {
            pre = String.format(url, this.controller, this.curpage - 1, this.pagesize, this.where, "上一页");
        }
        //下一页
        String next = null;
        if(this.curpage == this.pages()) {
            next = "<a href=javascript:alert('已经是最后一页');>下一页</a>";
        }else {
            next = String.format(url, this.controller, this.curpage + 1, this.pagesize, this.where, "下一页");
        }
        //尾页
        String last = String.format(url, this.controller,this.pages(),this.pagesize,this.where,"尾页");
        String info = String.format("第%d页/共%d页 共%d条记录",this.curpage,this.pages(),this.total);
        //下拉框
        String option = null;
        String selected = "";
        for (int i = 1; i <= this.pages(); i++) {
            if (i == this.curpage) {
                selected = "selected";
            } else {
                selected = "";
            }
            option = String.format("<option %s value='%s'>%d</option>",selected,String.format("%s?curpage=%d&pagesize=%d&%s", this.controller, i, this.pagesize, this.where),i);
            options.add(option);
        }
        String sel = "<select name='sel' onchange='javascript:location.href=this.value'>";
        for (String o : options) {
            sel += o;
        }
        sel += "</select>";
        //拼出最后的结果
        StringBuffer sb = new StringBuffer();
        sb.append("<div class=''oy_p>").append(first).append(pre).append(sel).append(next).append(last).append(info).append("</div>");
        //输出
        JspWriter out = this.getJspContext().getOut();
        out.print(sb);
    }
}

