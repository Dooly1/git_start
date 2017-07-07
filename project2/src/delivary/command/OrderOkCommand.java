package delivary.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import delivary.mybatis.OrderStatusDAO;
import delivary.mybatis.ProductVO;
import delivary.mybatis.StatusVO;
import delivary.mybatis.UserVO;
import delivary.mybatis.lengthVO;


public class OrderOkCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {	
		ProductVO voa = new ProductVO();
		voa.setProduct_code(request.getParameter("product"));
		voa = OrderStatusDAO.getOneProduct(voa.getProduct_code());
		
		StatusVO vox = new StatusVO();
		vox.setIdx(null);
		vox.setU_id(null);
		UserVO vo = (UserVO)request.getSession().getAttribute("getUser");
		if(vo != null){
			vox.setIdx(vo.getIdx());
			vox.setU_id(vo.getU_id());
		}
		System.out.println(vo);
		String addr = request.getParameter("addr");
		String addr_2 = request.getParameter("addr_2");
		
		vox.setOname(request.getParameter("send"));
		vox.setOzip(request.getParameter("zip"));
		vox.setOaddr(addr);
		vox.setOaddr2(request.getParameter("addr2"));
		vox.setOphone(request.getParameter("sendPhone"));
		vox.setOname_2(request.getParameter("receive"));
		vox.setOzip2(request.getParameter("zip_2"));
		vox.setOaddr_2(addr_2);
		vox.setOaddr2_2(request.getParameter("addr2_2"));
		vox.setOphone_2(request.getParameter("receivePhone"));
		
		lengthVO lvo = new lengthVO();
		lvo.setL_start(addr.substring(0, 2));
		lvo.setL_end(addr_2.substring(0, 2));
		lvo = OrderStatusDAO.getBill2(lvo);
		System.out.println(lvo);
		vox.setLengthcode(lvo.getLengthcode());
		
		System.out.println(vox);
		
		int res = OrderStatusDAO.insertOrder(vox);
		voa.setOdx(String.valueOf(res));
		voa.setList_count("1");
		voa.setList_saleprice(voa.getProduct_price());
		System.out.println(voa);
		int res2 = OrderStatusDAO.insertOrderList(voa);
		
		if(res > 0 && res2 > 0){
			request.setAttribute("oRes", res);
			request.setAttribute("length", lvo.getL_tax());
			request.setAttribute("tax", voa.getProduct_price());
			request.setAttribute("producted", voa.getProduct_name());
		}
		return "service/order_ok.jsp";
	}

}
