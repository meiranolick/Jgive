import React from 'react';
import { StyleSheet, Text, View } from 'react-native';
import HighchartsReactNative from '@highcharts/highcharts-react-native';

export default function App() {
  this.state = {
    chartOptions: {
      series: [{
        data: [1, 3, 2]
      }]
    }
  };

  return (
    <View style={styles.container}>
      <HighchartsReactNative
          styles={styles.container}
          options={this.state.chartOptions}
          modules={modules}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
