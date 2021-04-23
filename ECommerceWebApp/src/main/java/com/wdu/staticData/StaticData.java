package com.wdu.staticData;

import com.wdu.entity.BranchAddress;

public class StaticData {
	
	public BranchAddress getBranchAddress1() {
		
		BranchAddress branchAddres1 = new BranchAddress();

		branchAddres1.setAddressLine1("#1233 Vbeehive playgroup pre-nursery school campus.");
		branchAddres1.setAddressLine2("3rd Main Rd, BEL Layout 2nd Block,");
		return branchAddres1;
	}
	
public BranchAddress getBranchAddress2() {
		
		BranchAddress branchAddress2 = new BranchAddress();

		branchAddress2.setAddressLine1("#23, 2nd Floor,Above N.S.Kumbar Art Studio front of SBI Bank,");
		branchAddress2.setAddressLine2("Main Road, NTI Layout, Vidyaranyapura,");
		return branchAddress2; 
	}

}
