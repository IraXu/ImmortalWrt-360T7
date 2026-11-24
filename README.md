<div align="center">

<img src="logo.png" alt="ImmortalWrt" width="420">

# ImmortalWrt · 360 T7

面向 360 T7 的 ImmortalWrt 云编译配置，提供 **Nikki** 与 **OpenClash** 两条构建路线。

[![Nikki 构建](https://github.com/IraXu/ImmortalWrt-360T7/actions/workflows/pure-padavanonly-360t7-24.10-6.6.yml/badge.svg)](https://github.com/IraXu/ImmortalWrt-360T7/actions/workflows/pure-padavanonly-360t7-24.10-6.6.yml)
[![OpenClash 构建](https://github.com/IraXu/ImmortalWrt-360T7/actions/workflows/pure-hanwckf.yml/badge.svg)](https://github.com/IraXu/ImmortalWrt-360T7/actions/workflows/pure-hanwckf.yml)
[![Releases](https://img.shields.io/github/v/release/IraXu/ImmortalWrt-360T7?label=Release&color=168B83)](https://github.com/IraXu/ImmortalWrt-360T7/releases)

[下载固件](https://github.com/IraXu/ImmortalWrt-360T7/releases) · [查看构建](https://github.com/IraXu/ImmortalWrt-360T7/actions) · [反馈问题](https://github.com/IraXu/ImmortalWrt-360T7/issues)

</div>

## 选择版本

| 对比项 | padavanonly · Nikki | hanwckf · OpenClash |
| :--- | :--- | :--- |
| 上游分支 | `openwrt-24.10-6.6` | `openwrt-21.02` |
| 内核系列 | Linux 6.6 | Linux 5.4 |
| 代理插件 | Nikki + Mihomo | OpenClash |
| 防火墙 | firewall4 / nftables | firewall / iptables |
| 目标设备 | `360t7` | `mt7981-360-t7-108M` |
| 编译配置 | [6.6_pure.config](6.6_pure.config) | [pure.config](pure.config) |

> [!IMPORTANT]
> 下载或刷写前，请核对设备分区、固件文件名及对应 Release 说明；不要仅凭“360 T7”名称混刷不同布局的镜像。

仓库还保留其他构建工作流，具体源码与配置以各工作流为准；上表列出的是这两条构建路线。

## 默认登录

| 项目 | 默认值 |
| :--- | :--- |
| 管理地址 | **http://192.168.77.1** |
| 用户名 | `root` |
| 初始密码 | 空 |

首次登录后请设置管理密码。保留旧配置升级时，管理地址、密码和其他设置可能沿用原配置，以设备实际状态及对应 Release 说明为准。

## 下载与使用

1. 打开 [Releases](https://github.com/IraXu/ImmortalWrt-360T7/releases)，根据 **Nikki / OpenClash**、上游版本选择对应发布。
2. 在附件中选择适用的镜像。`sysupgrade` 用于已安装兼容 OpenWrt/ImmortalWrt 系统的升级流程；`factory` 的用途取决于设备现有系统和引导环境，不能直接当作通用升级包。
3. 如发布附带 `sha256sums` 或 `SHA256SUMS`，核对镜像校验值。升级前备份配置，跨大版本切换时先确认配置兼容性。

编译记录见 [Actions](https://github.com/IraXu/ImmortalWrt-360T7/actions)。某次构建使用的源码提交、软件包版本和默认设置，以该次运行及发布附件为准。

## 自行编译

1. Fork 本仓库，并在自己的仓库中启用 Actions。
2. 修改对应的 `*.config` 文件；需要添加 feeds 或自定义默认设置时，再调整 DIY 脚本及工作流。
3. 在 Actions 页面选择对应工作流，点击 **Run workflow**。
4. 成功后，从运行页面的 **Artifacts** 或对应 Release 下载产物。

带 `clean` 输入的工作流，其具体行为以工作流说明为准；启用缓存后，日常构建通常无需清理，首次构建仍需建立缓存。

<details>
<summary><strong>项目结构与文件职责</strong></summary>

```text
ImmortalWrt-360T7/
├── .github/workflows/
│   ├── pure-padavanonly-360t7-24.10-6.6.yml  # 24.10 / 6.6 / Nikki
│   ├── pure-hanwckf.yml                    # 21.02 / 5.4 / OpenClash
│   └── …                                  # 其他构建工作流
├── 6.6_pure.config                         # Nikki 版本编译配置
├── pure.config                             # hanwckf / OpenClash 编译配置
├── diy-part1.sh                            # 更新 feeds 前执行
├── diy-part2.sh                            # 更新 feeds 后的自定义步骤
├── logo.png
├── LICENSE
└── README.md
```

工作流决定实际执行顺序。最终软件包选择由配置文件、目标默认包和依赖解析共同决定；若发布提供配置报告或 manifest，可用它们核对固件实际内容。

</details>

## 问题反馈

提交 [Issue](https://github.com/IraXu/ImmortalWrt-360T7/issues) 时，请附上所用固件文件名、设备分区布局、是否保留旧配置、复现步骤，以及相关 Actions / Release 链接，便于定位问题。

## 致谢

感谢以下项目及其贡献者：

- [ImmortalWrt](https://github.com/immortalwrt/immortalwrt)
- [hanwckf / immortalwrt-mt798x](https://github.com/hanwckf/immortalwrt-mt798x)
- [padavanonly / immortalwrt-mt798x-6.6](https://github.com/padavanonly/immortalwrt-mt798x-6.6) · [immortalwrtARM](https://github.com/padavanonly/immortalwrtARM)
- [Nikki](https://github.com/nikkinikki-org/OpenWrt-nikki) · [Mihomo](https://github.com/MetaCubeX/mihomo) · [OpenClash](https://github.com/vernesong/OpenClash)
- [P3TERX / Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)

本仓库许可证见 [LICENSE](LICENSE)；上游源码及内置软件遵循各自许可证。
