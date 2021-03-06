package com.pancake.service.content;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.pancake.entity.component.Transaction;
import com.pancake.entity.content.Record;
import com.pancake.entity.content.TxDelete;
import com.pancake.entity.enumeration.TxType;
import com.pancake.entity.util.Const;
import com.pancake.service.component.TransactionService;
import com.pancake.util.RabbitmqUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.URL;

/**
 * Created by chao on 2018/6/3.
 */
public class TxDeleteService {
    private final static ObjectMapper objectMapper = new ObjectMapper();
    private final static Logger logger = LoggerFactory.getLogger(TxDeleteService.class);
    private TransactionService txService;
    private RabbitmqUtil rmq;

    public TxDeleteService() {
        txService = TransactionService.getInstance();
        URL configFile = TxDeleteService.class.getClassLoader().getResource("blockchain-config-test.json");
        logger.info("configFile.getPath(): " + configFile.getPath());
        rmq = new RabbitmqUtil(Const.TX_QUEUE, configFile.getPath());
    }

    /**
     * 根据 TxDelete 生成交易单，并将交易单存储在区块中
     * @param txDelete
     * @return 返回交易单ID
     */
    public String save(TxDelete txDelete) {
        // 若 txDelete 的类型没有设置，则设为类名
        if(txDelete.getContentType() == null || txDelete.getContentType().trim().equals("")) {
            txDelete.setContentType(txDelete.getClass().getSimpleName());
        }

        Transaction tx = null;
        try {
            tx = txService.genTx(TxType.DELETE.getName(), txDelete);
            logger.info("生成交易单: " + tx.getTxId());
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (tx != null) {
            rmq.push(tx.toString());
        } else {
            logger.error("tx 为 null");
        }

        if(tx == null) {
            return null;
        }
        return tx.getTxId();
    }
}
