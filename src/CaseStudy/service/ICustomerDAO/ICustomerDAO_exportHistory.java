package CaseStudy.service.ICustomerDAO;

import CaseStudy.model.TradeHistory;

import java.util.List;

public interface ICustomerDAO_exportHistory {
    List<TradeHistory> exportHistory(int customId);
}
