﻿using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Coldairarrow.Entity.IT
{
    /// <summary>
    /// 库存明细表
    /// </summary>
    [Table("IT_LocalDetail")]
    public partial class IT_LocalDetail
    {

        /// <summary>
        /// Id
        /// </summary>
        [Key, Column(Order = 1)]
        public String Id { get; set; }

        /// <summary>
        /// 仓库ID
        /// </summary>
        public String StorId { get; set; }

        /// <summary>
        /// 入库ID
        /// </summary>
        public String InStorId { get; set; }

        /// <summary>
        /// 货位ID
        /// </summary>
        public String LocalId { get; set; }

        /// <summary>
        /// 托盘号ID
        /// </summary>
        public String TrayId { get; set; }

        /// <summary>
        /// 托盘分区ID
        /// </summary>
        public String ZoneId { get; set; }

        /// <summary>
        /// 物料ID
        /// </summary>
        public String MaterialId { get; set; }

        /// <summary>
        /// 单位ID
        /// </summary>
        public String MeasureId { get; set; }

        /// <summary>
        /// 批次号
        /// </summary>
        public String BatchNo { get; set; }

        /// <summary>
        /// 条码
        /// </summary>
        public String BarCode { get; set; }

        /// <summary>
        /// 入库时间
        /// </summary>
        public DateTime InTime { get; set; }

        /// <summary>
        /// 总额
        /// </summary>
        public Double? Amount { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime CreateTime { get; set; }

        /// <summary>
        /// 创建人
        /// </summary>
        public String CreatorId { get; set; }

        /// <summary>
        /// 单价
        /// </summary>
        public Double? Price { get; set; }

        /// <summary>
        /// 删除状态：0=未删除；1＝已删除；
        /// </summary>
        [Column("Deleted", TypeName = "bit")]
        [Required]
        public Boolean Deleted { get; set; }

        /// <summary>
        /// 数量
        /// </summary>
        public Double? Num { get; set; }

    }
}