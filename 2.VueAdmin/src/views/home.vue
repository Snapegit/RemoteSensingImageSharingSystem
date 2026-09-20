<template>
<div class="content" :style='{"minHeight":"calc(100vh - 190px)","padding":"0px 5% 30px","margin":"0 auto","alignItems":"flex-start","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230909/c30ce7be70a7441f82674cbbf06daef2.jpg) no-repeat center top / cover","display":"flex","width":"100%","fontSize":"16px","height":"100%"}'>
	<!-- notice -->
	<!-- title -->
	<div class="text" :style='{"padding":"0px","margin":"40px auto 40px","borderColor":"#ceddee","color":"rgb(51, 51, 51)","borderRadius":"0px","textAlign":"center","background":"none","borderWidth":"0px","width":"auto","fontSize":"24px","borderStyle":"solid","fontWeight":"500"}'>欢迎使用 {{this.$project.projectName}}</div>
	

	
	<!-- echarts -->
</div>
</template>
<script>
//0
import router from '@/router/router-static'
import * as echarts from 'echarts'
export default {
	data() {
		return {
		};
	},
	mounted(){
		this.init();
	},
	methods:{
		init(){
			if(this.$storage.get('Token')){
			this.$http({
				url: `${this.$storage.get('sessionTable')}/session`,
				method: "get"
			}).then(({ data }) => {
				if (data && data.code != 0) {
				router.push({ name: 'login' })
				}
			});
			}else{
				router.push({ name: 'login' })
			}
		},
  }
};
</script>
<style lang="scss" scoped>
    .cardView {
        display: flex;
        flex-wrap: wrap;
        width: 100%;

        .cards {
            display: flex;
            align-items: center;
            width: 100%;
            margin-bottom: 10px;
            justify-content: center;
            .card {
                width: calc(25% - 20px);
                margin: 0 10px;
                ::v-deep.el-card__body{
                    padding: 0;
                }
            }
        }
    }
	
	// 日历
	.calendar td .text {
				border: 1px solid rgba(51, 63, 136, .1);
				border-radius: 4px;
				flex-direction: column;
				background: rgba(255,255,255,1);
				display: flex;
				width: 100%;
				justify-content: center;
				align-items: center;
				height: 100%;
			}
	.calendar td .text:hover {
				background: #0266b510;
			}
	.calendar td .text .new {
				color: inherit;
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td .text .old {
				color: inherit;
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td.festival .text {
				border-radius: 4px;
				flex-direction: column;
				background: #0266b510;
				display: flex;
				width: 100%;
				justify-content: center;
				align-items: center;
				height: 100%;
			}
	.calendar td.festival .text:hover {
				background: #0266b520;
			}
	.calendar td.festival .text .new {
				color: inherit;
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td.festival .text .old {
				color: inherit;
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td.other .text {
				border: 0;
				border-radius: 4px;
				flex-direction: column;
				color: #ccc;
				background: none;
				display: flex;
				width: 100%;
				font-size: inherit;
				justify-content: center;
				align-items: center;
				opacity: 1;
				height: 100%;
			}
	.calendar td.other .text:hover {
				background: #0266b510;
			}
	.calendar td.other .text .new {
				color: #999;
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td.other .text .old {
				color: #999;
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td.today .text {
				border-radius: 4px;
				flex-direction: column;
				color: #fff;
				background: #0266b580;
				display: flex;
				width: 100%;
				justify-content: center;
				align-items: center;
				height: 100%;
			}
	.calendar td.today .text:hover {
				color: #333;
				background: #0266b530;
				opacity: 1;
			}
	.calendar td.today .text .new {
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td.today .text .old {
				font-size: inherit;
				line-height: 1.4;
			}
	
	// echarts1
	.type1 .echarts1 {
				border-radius: 4px;
				padding: 10px;
				margin: 0px 0;
				background: rgba(255,255,255,.96);
				width: calc(100% - 0px);
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type1 .echarts1:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	// echarts2
	.type2 .echarts1 {
				border-radius: 4px;
				padding: 10px;
				margin: 0;
				background: rgba(255,255,255,.96);
				width: 49%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type2 .echarts1:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	.type2 .echarts2 {
				border-radius: 4px;
				padding: 10px;
				margin: 0;
				background: rgba(255,255,255,.96);
				width: 49%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type2 .echarts2:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	// echarts3
	.type3 .echarts1 {
				border-radius: 4px;
				padding: 10px;
				margin: 0 0 30px 0;
				color: #333;
				background: rgba(255,255,255,.96);
				width: 100%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type3 .echarts1:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	.type3 .echarts2 {
				border-radius: 4px;
				padding: 10px;
				margin: 0 0 30px 0;
				background: rgba(255,255,255,.96);
				width: 49%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type3 .echarts2:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	.type3 .echarts3 {
				border-radius: 4px;
				padding: 10px;
				margin: 0;
				background: rgba(255,255,255,.96);
				width: 49%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type3 .echarts3:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	// echarts4
	.type4 .echarts1 {
				border-radius: 4px;
				padding: 10px;
				margin: 0px 0 30px;
				background: rgba(255,255,255,.96);
				width: 49%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type4 .echarts1:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	.type4 .echarts2 {
				border-radius: 4px;
				padding: 10px;
				margin: 0px 0 30px;
				background: rgba(255,255,255,.96);
				width: 49%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type4 .echarts2:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	.type4 .echarts3 {
				border-radius: 4px;
				padding: 10px;
				margin: 0px 0 30px;
				background: rgba(255,255,255,.96);
				width: 49%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type4 .echarts3:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	.type4 .echarts4 {
				border-radius: 4px;
				padding: 10px;
				margin: 0px 0 30px;
				background: rgba(255,255,255,.96);
				width: 49%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type4 .echarts4:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	// echarts5
	.type5 .echarts1 {
				border-radius: 4px;
				padding: 10px;
				margin: 0px 0 20px;
				background: rgba(255,255,255,.96);
				width: 100%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type5 .echarts1:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	.type5 .echarts2 {
				border-radius: 4px;
				padding: 10px;
				margin: 0px 0 30px;
				background: rgba(255,255,255,.96);
				width: 49%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type5 .echarts2:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	.type5 .echarts3 {
				border-radius: 4px;
				padding: 10px;
				margin: 0px 0 20px;
				background: rgba(255,255,255,.96);
				width: 49%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type5 .echarts3:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	.type5 .echarts4 {
				border-radius: 4px;
				padding: 10px;
				margin: 0px 0 20px;
				background: rgba(255,255,255,.96);
				width: 49%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type5 .echarts4:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	.type5 .echarts5 {
				border-radius: 4px;
				padding: 10px;
				margin: 0px 0 20px;
				background: rgba(255,255,255,.96);
				width: 49%;
				border-color: #f6f6f6;
				border-width: 2px;
				position: relative;
				border-style: solid;
				transition: 0.3s;
				height: 420px;
			}
	.type5 .echarts5:hover {
				transform: translate3d(0, 0px, 0);
				z-index: 1;
			}
	
	.echarts-flag-2 {
	  display: flex;
	  flex-wrap: wrap;
	  justify-content: space-between;
	  padding: 10px 20px;
	  background: rebeccapurple;
	
	  &>div {
	    width: 32%;
	    height: 300px;
	    margin: 10px 0;
	    background: rgba(255,255,255,.1);
	    border-radius: 8px;
	    padding: 10px 20px;
	  }
	}
</style>
