package com.walab.coding.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserDTO;
import com.walab.coding.Model.UserProblemDTO;
import com.walab.coding.Repository.UserProblemDAO;

@Service("userProblemService")
public class UserProblemServiceImpl implements UserProblemService{
	
	@Autowired
	UserProblemDAO userProblemService ;//= new UserProblemDAO(dataSource);
	
	@Override
	public List<UserProblemDTO> read(int userID){
		
		List<UserProblemDTO> problems = userProblemService.readAll(userID);
		
		for(UserProblemDTO problem: problems){
			
			//링크로 입력 받았을 경우 이름이 없으면 url을 나누어서 가장 마지막에 적힌 값으로 이름을 대체함
			//메인 페이지 하는 사람이 problem setting 하는 부분을 문제 등록 service 부분에다가 넣어두면 될 거 같음!!
			//일단은 site, siteurl 작업하면서 같이 해뒀어요~:)
			//거기서 부터 url을 나누어서 problem 값으로 넣어두게끔!! 이해 안 가면 연락주세요!!
			if(problem.getSite() == null) {
				String[]problemSplit = problem.getLink().trim().split("://|/|\\.");
				System.out.println(problemSplit.length + " : "+problem.getLink());
				
				if(problemSplit[problemSplit.length-1].compareTo("")!=0 && problemSplit[problemSplit.length-1]!= null) {
					problem.setProblem(problemSplit[problemSplit.length-1]);
				}else {
					problem.setProblem(problemSplit[problemSplit.length-2]);
				}
				
				if(problemSplit[0].compareTo("https") == 0|| problemSplit[0].compareTo("http") == 0) {
					problem.setSite(problemSplit[1]);
				}else {
					problem.setSite(problemSplit[0]);
				}
			}
		}
		return problems;
	}
	
	@Override
	public List<GoalDTO> readGoal(int userID){
		List<GoalDTO> goals = userProblemService.readGoalAll(userID);
		
		return goals;
		
	}

}
