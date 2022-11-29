CREATE TABLE `data_platform_goods_movement_document_header_data`
(
  `BusinessPartner`              int(12) NOT NULL,
  `GoodsMovementDocumentYear`    int(4) NOT NULL,
  `GoodsMovementDocumentMonth`   int(2) NOT NULL,
  `GoodsMovementDocument`        int(16) NOT NULL,
  `InventoryTransactionType`     varchar(2) DEFAULT NULL,
  `DocumentDate`                 date DEFAULT NULL,
  `PostingDate`                  date DEFAULT NULL,
  `CreationDate`                 date DEFAULT NULL,
  `CreationTime`                 time DEFAULT NULL,
  `MaterialDocumentHeaderText`   varchar(100) DEFAULT NULL,
  `ReferenceDocument`            int(16) DEFAULT NULL,
  `GoodsMovementIsCancelled`     tinyint(1) DEFAULT NULL,
  
  PRIMARY KEY (`BusinessPartner`, `GoodsMovementDocumentYear`, `GoodsMovementDocumentMonth`, `GoodsMovementDocument`),
  
  CONSTRAINT `DataPlatformGoodsMovementDocumentHeaderBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
