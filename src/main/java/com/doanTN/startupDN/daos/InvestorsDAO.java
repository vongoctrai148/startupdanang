package com.doanTN.startupDN.daos;


import com.doanTN.startupDN.entities.Investors;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface InvestorsDAO extends JpaRepository<Investors,Long> {

    @Query("SELECT pr FROM Investors pr WHERE pr.user.username = ?1")
    List<Investors> findAllByUsername(String username);

    @Query("select c from Investors c")
        List<Investors> getInvestors(Pageable pageable);

    @Query("SELECT count (c) FROM Investors c")
    int getTotalInvestor();
}
