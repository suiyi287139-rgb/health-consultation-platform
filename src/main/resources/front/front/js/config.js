var projectName = '基于SpringBoot的健康咨询服务平台';
/**
 * 轮播图配置
 */
var swiper = {
    // 设定轮播容器宽度，支持像素和百分比
    width: '100%',
    height: '400px',
    // hover（悬停显示）
    // always（始终显示）
    // none（始终不显示）
    arrow: 'none',
    // default（左右切换）
    // updown（上下切换）
    // fade（渐隐渐显切换）
    anim: 'default',
    // 自动切换的时间间隔
    // 默认3000
    interval: 2000,
    // 指示器位置
    // inside（容器内部）
    // outside（容器外部）
    // none（不显示）
    indicator: 'outside'
}

/**
 * 账户与安全菜单
 */
var centerMenu = [{
    name: '账户与安全',
    url: '../' + localStorage.getItem('userTable') + '/center.html'
},
    {
        name: '我的收藏',
        url: '../storeup/list.html'
    }
]


var indexNav = [

    {
        name: '科室信息',
        url: './pages/keshixinxi/list.html'
    },
    {
        name: '交流论坛',
        url: './pages/forum/list.html'
    },

    {
        name: '通知公告',
        url: './pages/news/list.html'
    },
]

var adminurl = "http://localhost:8080/springboote9fx7/admin/dist/index.html";

var cartFlag = false

var chatFlag = false


var menu = [{
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
            "appFrontIcon": "cuIcon-phone",
            "buttons": ["查看", "修改", "删除"],
            "menu": "轮播图管理",
            "tableName": "config"
        }, {"appFrontIcon": "cuIcon-news", "buttons": ["新增", "查看", "修改", "删除"], "menu": "通知公告", "tableName": "news"}],
        "menu": "系统管理"
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


var isAuth = function (tableName, key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for (let i = 0; i < menus.length; i++) {
        if (menus[i].tableName == role) {
            for (let j = 0; j < menus[i].backMenu.length; j++) {
                for (let k = 0; k < menus[i].backMenu[j].child.length; k++) {
                    if (tableName == menus[i].backMenu[j].child[k].tableName) {
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName, key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for (let i = 0; i < menus.length; i++) {
        if (menus[i].tableName == role) {
            for (let j = 0; j < menus[i].frontMenu.length; j++) {
                for (let k = 0; k < menus[i].frontMenu[j].child.length; k++) {
                    if (tableName == menus[i].frontMenu[j].child[k].tableName) {
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
