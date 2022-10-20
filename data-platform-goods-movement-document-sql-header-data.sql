CREATE TABLE `data_platform_goods_movement_document_header_data`
(
  `BusinessPartner`              int(10) NOT NULL,
  `GoodsMovementDocumentYear`    int(4) NOT NULL,
  `GoodsMovementDocumentMonth`   int(2) NOT NULL,
  `GoodsMovementDocument`        int(10) NOT NULL,
  `InventoryTransactionType`     varchar(2) DEFAULT NULL,
  `DocumentDate`                 varchar(80) DEFAULT NULL,
  `PostingDate`                  varchar(80) DEFAULT NULL,
  `CreationDate`                 varchar(80) DEFAULT NULL,
  `CreationTime`                 varchar(80) DEFAULT NULL,
  `MaterialDocumentHeaderText`   varchar(100) DEFAULT NULL,
  `ReferenceDocument`            int(16) DEFAULT NULL,
  `GoodsMovementIsCancelled`     tinyint(1) DEFAULT NULL,  
  PRIMARY KEY (`BusinessPartner`, `GoodsMovementDocumentYear`, `GoodsMovementDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
