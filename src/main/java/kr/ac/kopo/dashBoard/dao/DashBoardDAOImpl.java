package kr.ac.kopo.dashBoard.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.dashBoard.vo.MonthlyBudgetVO;
import kr.ac.kopo.dashBoard.vo.PreferentialRateVO;
import kr.ac.kopo.dashBoard.vo.ProductSearchInfoVO;
import kr.ac.kopo.dashBoard.vo.SavingProductVO;
import kr.ac.kopo.hanaroAccount.vo.SplitHistoryVO;

@Repository
public class DashBoardDAOImpl implements DashBoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public MonthlyBudgetVO myMonthlySplit(String accountNo) {
		
		MonthlyBudgetVO monthlySplit = sqlSessionTemplate.selectOne("dashBoard.DashBoardDAO.myMonthlySplit", accountNo);
		System.out.println("dao : "+monthlySplit);
		return monthlySplit;
	}
	
	public MonthlyBudgetVO myMonthlyFixedExpense(String accountNo) {
		MonthlyBudgetVO monthlyFixedExpense = sqlSessionTemplate.selectOne("dashBoard.DashBoardDAO.myMonthlyFixedExpense", accountNo);
		System.out.println("dao : "+monthlyFixedExpense);
		return monthlyFixedExpense;
	}

	public MonthlyBudgetVO agesAvgSplit(int ageGroup) {
		//또래 나이대 고객의 설정 월 소비예산, 월 저축액 평균
		MonthlyBudgetVO agesAvgSplit = sqlSessionTemplate.selectOne("dashBoard.DashBoardDAO.agesAvgSplit", ageGroup);
		System.out.println(agesAvgSplit);

		return agesAvgSplit;
	}

	public MonthlyBudgetVO agesAvgFixedExpense(int ageGroup) {
		
		//또래 나이대 고객의 설정 월 고정지출
		MonthlyBudgetVO agesAvgFixedExpense = sqlSessionTemplate.selectOne("dashBoard.DashBoardDAO.agesAvgFixedExpense", ageGroup);
		System.out.println(agesAvgFixedExpense);
		
		return agesAvgFixedExpense;
	}
	
	// 최근 6개월 달별 저축액 
	public List<SplitHistoryVO> monthlySaving(String accountNo) {
		List<SplitHistoryVO> savingSplitList = sqlSessionTemplate.selectList("dashBoard.DashBoardDAO.monthlySaving", accountNo);
		
	//	System.out.println("6개월 저축액 dao" + savingSplitList);
		return savingSplitList;
	}

	//----------------------------------------예/적금 ---------------------------------------
	public List<SavingProductVO> recommendProductList(ProductSearchInfoVO searchInfo) {
	
		List<SavingProductVO> recommendProductList = sqlSessionTemplate.selectList("dashBoard.DashBoardDAO.recommendProduct" , searchInfo);
	
		return recommendProductList;
	}
	
	//검색 조건 and 고객 조건의 예/적금 list
	public List<SavingProductVO> savingProductList(ProductSearchInfoVO searchInfo) {
		
		List<SavingProductVO> productList = sqlSessionTemplate.selectList("dashBoard.DashBoardDAO.savingProductList", searchInfo);
		return productList;
	}
	
	//상품 별 우대금리 list
	public List<PreferentialRateVO> pRateList(String productName) {
		List<PreferentialRateVO> pRateList = sqlSessionTemplate.selectList("dashBoard.DashBoardDAO.pRateList", productName);
		return pRateList;
	}
	
	

}
