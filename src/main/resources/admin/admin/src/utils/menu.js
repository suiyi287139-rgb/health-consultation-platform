const menu = {
    list() {
        return [{
            "backMenu": [{
                "child": [{
                    "appFrontIcon": "cuIcon-addressbook",
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "用户",
                    "menuJump": "列表",
                    "tableName": "yonghu"
                }], "menu": "用户管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-rank",
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "医生",
                    "menuJump": "列表",
                    "tableName": "yisheng"
                }], "menu": "医生管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-qrcode",
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "科室信息",
                    "menuJump": "列表",
                    "tableName": "keshixinxi"
                }], "menu": "科室信息管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-brand",
                    "buttons": ["查看", "删除"],
                    "menu": "挂号预约",
                    "menuJump": "列表",
                    "tableName": "guahaoyuyue"
                }], "menu": "挂号预约管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-clothes",
                    "buttons": ["查看", "删除"],
                    "menu": "在线咨询",
                    "menuJump": "列表",
                    "tableName": "zaixianzixun"
                }], "menu": "在线咨询管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-shop",
                    "buttons": ["查看", "删除"],
                    "menu": "医生诊疗",
                    "menuJump": "列表",
                    "tableName": "yishengzhenliao"
                }], "menu": "医生诊疗管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-news",
                    "buttons": ["查看", "删除"],
                    "menu": "药方信息",
                    "menuJump": "列表",
                    "tableName": "yaofangxinxi"
                }], "menu": "药方信息管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-circle",
                    "buttons": ["查看", "删除"],
                    "menu": "患者档案",
                    "menuJump": "列表",
                    "tableName": "binglixinxi"
                }], "menu": "患者档案管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-group",
                    "buttons": ["查看", "修改", "删除"],
                    "menu": "交流论坛",
                    "tableName": "forum"
                }], "menu": "交流论坛"
            },{
                "child": [{
                    "appFrontIcon": "cuIcon-phone",
                    "buttons": ["查看", "修改", "删除"],
                    "menu": "轮播图管理",
                    "tableName": "config"
                }, {
                    "appFrontIcon": "cuIcon-news",
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "通知公告",
                    "tableName": "news"
                }], "menu": "系统管理"
            }],
            "frontMenu": [{
                "child": [{
                    "appFrontIcon": "cuIcon-copy",
                    "buttons": ["查看", "在线咨询", "挂号预约"],
                    "menu": "科室信息列表",
                    "menuJump": "列表",
                    "tableName": "keshixinxi"
                }], "menu": "科室信息模块"
            }],
            "hasBackLogin": "是",
            "hasBackRegister": "否",
            "hasFrontLogin": "否",
            "hasFrontRegister": "否",
            "roleName": "管理员",
            "tableName": "users"
        }, {
            "backMenu": [{
                "child": [{
                    "appFrontIcon": "cuIcon-brand",
                    "buttons": ["查看", "删除", "支付"],
                    "menu": "挂号预约",
                    "menuJump": "列表",
                    "tableName": "guahaoyuyue"
                }], "menu": "挂号预约管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-clothes",
                    "buttons": ["查看", "删除"],
                    "menu": "在线咨询",
                    "menuJump": "列表",
                    "tableName": "zaixianzixun"
                }], "menu": "在线咨询管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-shop",
                    "buttons": ["查看"],
                    "menu": "医生诊疗",
                    "menuJump": "列表",
                    "tableName": "yishengzhenliao"
                }], "menu": "医生诊疗管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-news",
                    "buttons": ["查看", "支付"],
                    "menu": "药方信息",
                    "menuJump": "列表",
                    "tableName": "yaofangxinxi"
                }], "menu": "药方信息管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-circle",
                    "buttons": ["查看"],
                    "menu": "患者档案",
                    "menuJump": "列表",
                    "tableName": "binglixinxi"
                }], "menu": "患者档案管理"
            }],
            "frontMenu": [{
                "child": [{
                    "appFrontIcon": "cuIcon-copy",
                    "buttons": ["查看", "在线咨询", "挂号预约"],
                    "menu": "科室信息列表",
                    "menuJump": "列表",
                    "tableName": "keshixinxi"
                }], "menu": "科室信息模块"
            }],
            "hasBackLogin": "是",
            "hasBackRegister": "否",
            "hasFrontLogin": "是",
            "hasFrontRegister": "是",
            "roleName": "用户",
            "tableName": "yonghu"
        }, {
            "backMenu": [{
                "child": [{
                    "appFrontIcon": "cuIcon-qrcode",
                    "buttons": ["查看"],
                    "menu": "科室信息",
                    "menuJump": "列表",
                    "tableName": "keshixinxi"
                }], "menu": "科室信息管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-brand",
                    "buttons": ["查看", "审核", "医生诊疗"],
                    "menu": "挂号预约",
                    "menuJump": "列表",
                    "tableName": "guahaoyuyue"
                }], "menu": "挂号预约管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-clothes",
                    "buttons": ["查看", "删除", "审核"],
                    "menu": "在线咨询",
                    "menuJump": "列表",
                    "tableName": "zaixianzixun"
                }], "menu": "在线咨询管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-shop",
                    "buttons": ["查看", "修改", "删除", "医生开药"],
                    "menu": "医生诊疗",
                    "menuJump": "列表",
                    "tableName": "yishengzhenliao"
                }], "menu": "医生诊疗管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-news",
                    "buttons": ["查看", "修改", "删除"],
                    "menu": "药方信息",
                    "menuJump": "列表",
                    "tableName": "yaofangxinxi"
                }], "menu": "药方信息管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-circle",
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "患者档案",
                    "menuJump": "列表",
                    "tableName": "binglixinxi"
                }], "menu": "患者档案管理"
            }],
            "frontMenu": [{
                "child": [{
                    "appFrontIcon": "cuIcon-copy",
                    "buttons": ["查看", "在线咨询", "挂号预约"],
                    "menu": "科室信息列表",
                    "menuJump": "列表",
                    "tableName": "keshixinxi"
                }], "menu": "科室信息模块"
            }],
            "hasBackLogin": "是",
            "hasBackRegister": "是",
            "hasFrontLogin": "否",
            "hasFrontRegister": "否",
            "roleName": "医生",
            "tableName": "yisheng"
        }]
    }
}
export default menu;
