<template>
  <div ref="chart" style="width: 50%; height: 376px">
    {{msg}}
  </div>
</template>

<script>
  import {getAction} from '@/api/manage'

  export default {
    name: 'hwz',
    data(){
      return{
        msg: ""
      }
    },
    mounted(){
      this.getEchartData()
    },
    methods: {
      hlhtohwz(){
        let url = "lbkj/hlh/hwz/hlhtohwz"
        getAction(url).then((res) => {
          if(res.success){
            this.msg = res.result;
          }
        })
      },
      getEchartData(){
        const chart = this.$refs.chart
        if(chart){
          const myChart = this.$echarts.init(chart)
          // const option = {
          //   title:{
          //     text: 'ECharts示例'
          //   },
          //   tooltip: {},
          //   xAxis:{
          //     data: ['衬衣','风衣','裤子','高跟鞋','裙子','内衣']
          //   },
          //   yAxis: {},
          //   series: [
          //     {
          //       name: '销量',
          //       type: 'bar',
          //       data:[5,20,36,10,10,20]
          //     }
          //   ]
          // }
          const option = {
            backgroundColor: '#0e202d',
            "grid": {
              "top": "15%",
              "left": "15%",
              "bottom": "10%",
              "right": "10%",
              "containLabel": true
            },
            "xAxis": [{
              "type": "category",
              "data": ["累计", "当月"],
              "axisTick": {
                "alignWithLabel": true
              },
              "nameTextStyle": {
                "color": "#82b0ec"
              },
              "axisLine": {
                "lineStyle": {
                  "color": "#82b0ec"
                }
              },
              "axisLabel": {
                "textStyle": {
                  "color": "#82b0ec"
                }
              }
            }],
            "yAxis": [{
              "type": "value",
              "axisLabel": {
                "textStyle": {
                  "color": "#82b0ec"
                },
                "formatter": "{value}%"
              },
              "splitLine": {
                "lineStyle": {
                  "color": "#0c2c5a"
                }
              },
              "axisLine": {
                "show": false
              }
            }],
            "series": [{
              "name": "",
              type: 'pictorialBar',
              symbolSize: [60, 16],
              symbolOffset: [0, -10],
              symbolPosition: 'end',
              z: 12,
              //"barWidth": "20",
              "label": {
                "normal": {
                  "show": true,
                  "position": "top",
                  "formatter": "{c}%"
                }
              },
              "data": [{
                "value": 100,
                "itemStyle": {
                  "color": "#59cb42"
                }
              }, {
                "value": 55.559999999999995,
                "itemStyle": {
                  "color": "#3cefff"
                }
              }]
            },
              {
                name: '',
                type: 'pictorialBar',
                symbolSize: [60, 16],
                symbolOffset: [0, 10],
                // "barWidth": "20",
                z: 12,
                "data": [{
                  "value": 100,
                  "itemStyle": {
                    "color": "#59cb42"
                  }
                }, {
                  "value": 55.559999999999995,
                  "itemStyle": {
                    "color": "#3cefff"
                  }
                }]
              },
              {
                name: '',
                type: 'pictorialBar',
                symbolSize: [90, 30],
                symbolOffset: [0, 20],
                z: 10,
                itemStyle: {
                  normal: {
                    color: 'transparent',
                    borderColor: '#14b1eb',
                    borderType: 'dashed',
                    borderWidth: 5
                  }
                },
                data: [100, 55.559999999999995]
              },
              {
                type: 'bar',
                itemStyle: {
                  normal: {
                    //color: '#14b1eb',
                    opacity: .7
                  }
                },
                //silent: true,
                "barWidth": "60",
                //barGap: '-100%', // Make series be overlap
                "data": [{
                  "value": 100,
                  "itemStyle": {
                    "color": "#59cb42"
                  }
                }, {
                  "value": 55.559999999999995,
                  "itemStyle": {
                    "color": "#3cefff"
                  }
                }],
                markLine:{
                  symbol:'none',
                  label:{
                    position:"middle",
                    formatter:'{b}'
                  },
                  data:[{
                    name:"目标值",
                    yAxis: 80,//res.targetTwo,
                    lineStyle:{
                      color:"#eecb5f"
                    },
                  }]
                }

              }


            ]
          }
          myChart.setOption(option)
        }
      }
    },
    created(){
      this.hlhtohwz();
    }
  }
</script>

<style scoped>

</style>