CREATE TABLE `data_platform_goods_movement_document_item_data`
(
  `BusinessPartner`                int(4) NOT NULL,            --新規追加
  `GoodsMovementDocumentYear`      int(4) NOT NULL,            --名称変更
  `GoodsMovementDocument`          int(10) NOT NULL,           --名称変更
  `GoodsMovementDocumentItem`      int(4) NOT NULL,            --名称変更
  `Product`                        varchar(40) DEFAULT NULL,   --名称変更
  `Plant`                          varchar(4) DEFAULT NULL,
  `StorageLocation`                varchar(4) DEFAULT NULL,
  `Batch`                          varchar(10) DEFAULT NULL,
  `GoodsMovementType`              varchar(3) DEFAULT NULL,
  `PlusMinusFlag`                  varchar(1) DEFAULT NULL,　　--新規追加
  `InventoryStockType`             varchar(2) DEFAULT NULL,
  `InventoryValuationType`         varchar(1) DEFAULT NULL,
  `Supplier`                       int(10) DEFAULT NULL,
  `Customer`                       int(10) DEFAULT NULL,
  `OrderID`                        int(10) DEFAULT NULL,      --名称変更
  `OrderItem`                      int(6) DEFAULT NULL,       --名称変更
  `OrderScheduleLine`              int(4) DEFAULT NULL,
  `Project`                        varchar(24) DEFAULT NULL,
  `ManufacturingOrder`             int(12) DEFAULT NULL,
  `ManufacturingOrderItem`         int(4) DEFAULT NULL,
  `GoodsMovementRefDocType`        varchar(1) DEFAULT NULL,
  `GoodsMovementReasonCode`        varchar(4) DEFAULT NULL,
  `DeliveryDocument`               int(10) DEFAULT NULL,      --名称変更
  `DeliveryDocumentItem`           int(6) DEFAULT NULL,       --名称変更
  `ProfitCenter`                   varchar(10) DEFAULT NULL,
  `GLAccount`                      varchar(10) DEFAULT NULL,
  `ProductBaseUnit`                varchar(3) DEFAULT NULL,   --名称変更
  `QuantityInBaseUnit`             varchar(13) DEFAULT NULL,
  `EntryUnit`                      varchar(3) DEFAULT NULL,
  `QuantityInEntryUnit`            varchar(13) DEFAULT NULL,
  `Currency`          　           varchar(5) DEFAULT NULL,   --名称変更
  `FiscalYear`                     int(4) DEFAULT NULL,
  `FiscalYearPeriod`               int(7) DEFAULT NULL,
  `IssuingPlant`                   varchar(4) DEFAULT NULL,  --新規追加
  `IssuingPlantStorageLocation`    varchar(1) DEFAULT NULL,  --新規追加
  `IssuingStockType`               varchar(2) DEFAULT NULL,  --新規追加
  `ReceivingPlant`                 varchar(4) DEFAULT NULL,  --新規追加
  `ReceivingPlantStorageLocation`  varchar(4) DEFAULT NULL,  --新規追加
  `ReceivingStockType`             varchar(2) DEFAULT NULL,  --新規追加
  `GoodsMovementDocumentItemText`  varchar(100) DEFAULT NULL, --名称変更
  `BatchValidityStartDate`         varchar(80) DEFAULT NULL,  --新規追加
  `BatchValidityEndDate`           varchar(80) DEFAULT NULL,  --新規追加
  `ManufactureDate`                varchar(80) DEFAULT NULL,
  `Reservation`                    int(10) DEFAULT NULL,
  `ReservationItem`                int(4) DEFAULT NULL,
  `IsAutomaticallyCreated`         tinyint(1) DEFAULT NULL,
  `GoodsMovementIsCancelled`       tinyint(1) DEFAULT NULL,
  `ReversedGMDocumentYear`         int(4) DEFAULT NULL,      --名称変更
  `ReversedGMDocument`             int(10) DEFAULT NULL,     --名称変更
  `ReversedGMDocumentItem`         int(4) DEFAULT NULL,      --名称変更
  `GMDocumentPostingType`          varchar(1) DEFAULT NULL,  --名称変更
    PRIMARY KEY (`BusinessPartner`, `GoodsMovementDocumentYear`, `GoodsMovementDocument`, `GoodsMovementDocumentItem`),
    CONSTRAINT (`DPFMGoodsMovementDocumentItemData_fk`) FOREIGN KEY (`BusinessPartner`, `GoodsMovementDocumentYear`, `GoodsMovementDocument`) REFERENCES `data_platform_goods_movement_document_header_data` (`BusinessPartner`, `GoodsMovementDocumentYear`, `GoodsMovementDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
