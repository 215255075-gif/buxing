// 想完全不依赖浏览器存储？复制本文件为 config.js，填上 key。
// 放在与 index.html 同一个目录即可；页面启动时如果浏览器里没有 key，就会用这里的。
window.BUXING_CONFIG = {
  key: "sk-随便填你的",
  provider: "deepseek",   // deepseek 或 ark
  model: "",              // 留空用默认；选 ark 时必须填控制台里的 Model ID
  city: "佳木斯",
  lat: null,
  lon: null
};
