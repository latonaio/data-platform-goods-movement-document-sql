CREATE TABLE `data_platform_goods_movement_document_item_data`
(
  `BusinessPartner`                varchar(4) NOT NULL,        --新規追加
  `GoodsMovementDocumentYear`      varchar(4) NOT NULL,        --名称変更
  `GoodsMovementDocument`          varchar(10) NOT NULL,       --名称変更
  `GoodsMovementDocumentItem`      varchar(4) NOT NULL,        --名称変更
  `Product`                        varchar(40) DEFAULT NULL,   --名称変更
  `Plant`                          varchar(4) DEFAULT NULL,
  `StorageLocation`                varchar(4) DEFAULT NULL,
  `Batch`                          varchar(10) DEFAULT NULL,
  `GoodsMovementType`              varchar(3) DEFAULT NULL,
  `PlusMinusFlag`                  varchar(1) DEFAULT NULL,　　--新規追加
  `InventoryStockType`             varchar(2) DEFAULT NULL,
  `InventoryValuationType`         varchar(1) DEFAULT NULL,
  `Supplier`                       varchar(10) DEFAULT NULL,
  `Customer`                       varchar(10) DEFAULT NULL,
  `OrderID`                        varchar(10) DEFAULT NULL,  --名称変更
  `OrderItem`                      varchar(6) DEFAULT NULL,   --名称変更
  `OrderScheduleLine`              varchar(4) DEFAULT NULL,
  `Project`                        varchar(24) DEFAULT NULL,
  `ManufacturingOrder`             varchar(12) DEFAULT NULL,
  `ManufacturingOrderItem`         varchar(4) DEFAULT NULL,
  `GoodsMovementRefDocType`        varchar(1) DEFAULT NULL,
  `GoodsMovementReasonCode`        varchar(4) DEFAULT NULL,
  `DeliveryDocument`               varchar(10) DEFAULT NULL,  --名称変更
  `DeliveryDocumentItem`           varchar(6) DEFAULT NULL,   --名称変更
  `ProfitCenter`                   varchar(10) DEFAULT NULL,
  `GLAccount`                      varchar(10) DEFAULT NULL,
  `ProductBaseUnit`                varchar(3) DEFAULT NULL,   --名称変更
  `QuantityInBaseUnit`             varchar(13) DEFAULT NULL,
  `EntryUnit`                      varchar(3) DEFAULT NULL,
  `QuantityInEntryUnit`            varchar(13) DEFAULT NULL,
  `Currency`          　           varchar(5) DEFAULT NULL,   --名称変更
  `FiscalYear`                     varchar(4) DEFAULT NULL,
  `FiscalYearPeriod`               varchar(7) DEFAULT NULL,
  `IssuingPlant`                   varchar(4) DEFAULT NULL,  --新規追加
  `IssuingPlantStorageLocation`    varchar(4) DEFAULT NULL,  --新規追加
  `IssuingStockType`               varchar(2) DEFAULT NULL,  --新規追加
  `ReceivingPlant`                 varchar(4) DEFAULT NULL,  --新規追加
  `ReceivingPlantStorageLocation`  varchar(4) DEFAULT NULL,  --新規追加
  `ReceivingStockType`             varchar(2) DEFAULT NULL,  --新規追加
  `GoodsMovementDocumentItemText`  varchar(100) DEFAULT NULL, --名称変更
  `BatchValidityStartDate`         varchar(80) DEFAULT NULL,  --新規追加
  `BatchValidityEndDate`           varchar(80) DEFAULT NULL,  --新規追加
  `ManufactureDate`                varchar(80) DEFAULT NULL,
  `Reservation`                    varchar(10) DEFAULT NULL,
  `ReservationItem`                varchar(4) DEFAULT NULL,
  `IsAutomaticallyCreated`         varchar(1) DEFAULT NULL,
  `GoodsMovementIsCancelled`       tinyint(1) DEFAULT NULL,
  `ReversedGMDocumentYear`         varchar(4) DEFAULT NULL,  --名称変更
  `ReversedGMDocument`             varchar(10) DEFAULT NULL, --名称変更
  `ReversedGMDocumentItem`         varchar(4) DEFAULT NULL,  --名称変更
  `GMDocumentPostingType`          varchar(1) DEFAULT NULL,  --名称変更
    PRIMARY KEY (`BusinessPartner`, `GoodsMovementDocumentYear`, `GoodsMovementDocument`, `GoodsMovementDocumentItem`),
    CONSTRAINT (`DPFMGoodsMovementDocumentItemData_fk`) FOREIGN KEY (`GoodsMovementDocumentYear`, `GoodsMovementDocument`) REFERENCES `data_platform_goods_movement_document_header_data` (`GoodsMovementDocumentYear`, `GoodsMovementDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
